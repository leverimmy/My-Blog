---
title: 如何在自己的服务器上部署 HedgeDoc？
tags:
  - 服务器
  - HedgeDoc
categories:
  - 技术
mathjax: true
toc: true
date: 2024-11-05 10:09:27
password:
id: How-to-Deploy-HedgeDoc-on-Your-Own-Server
---

终于！我在我的服务器上上部署了[我自己的 HedgeDoc](https://hedgedoc.leverimmy.top/)。

[HedgeDoc](https://hedgedoc.org/) 是一个开源的、基于 Web 的、自托管的协作式 Markdown 编辑器。它允许用户轻松地实时协作处理笔记、图表甚至演示文稿。用户只需分享笔记链接，就可以进行共同协作。

![[Demo 文档](https://hedgedoc.leverimmy.top/s/Eu_wTrO5y)](https://github.com/leverimmy/My-Blog/blob/main/source/gallery/How-to-Deploy-HedgeDoc-on-Your-Own-Server/demo.png)

<!--more-->

## 配置 Docker Compose

### 修改 `daemon.json`

这一步是为了更换 Docker 的镜像源。修改位于 `/etc/docker/` 目录下的 `daemon.json`，更改其中的内容为：

```json
{
  "registry-mirrors": ["https://111.com","https://222.com"]
}
```

这一步需要使用搜索引擎搜索可用的 Docker 镜像源。

### 新建 `docker-compose.yml`

在服务器中某个文件夹下（例如 `~/WorkSpace/hedgedoc/`）中新建 `docker-compose.yml` 如下：

```yaml
# hedgedoc/docker-compose.yml

version: '3'
services:
  database:
    image: postgres:16-alpine
    environment:
      - POSTGRES_USER=hedgedoc
      - POSTGRES_PASSWORD=password
      - POSTGRES_DB=hedgedoc
    volumes:
      - database:/var/lib/pgsql/data # change this to your own postgresql directory
    restart: always

  app:
    image: quay.io/hedgedoc/hedgedoc:latest
    environment:
      - CMD_DB_URL=postgres://hedgedoc:password@database:5432/hedgedoc
      - CMD_DOMAIN=hedgedoc.leverimmy.top # change this to your own domain
      - CMD_PORT=3000
      - CMD_URL_ADDPORT=false
      - CMD_ALLOW_ANONYMOUS=false
      - CMD_ALLOW_ANONYMOUS_EDITS=true
      - CMD_DEFAULT_PERMISSION=private
      - CMD_ALLOW_EMAIL_REGISTER=false
      - CMD_ALLOW_GRAVATAR=false
      - CMD_PROTOCOL_USESSL=true
      - CMD_HSTS_ENABLE=true # remember to add this
    volumes:
      - uploads:/hedgedoc/public/uploads
    ports:
      - 3000:3000
    restart: always
    depends_on:
      - database
volumes:
  database:
  uploads:
```

由于希望只有自己能够创建文档，所以我进行了严格的权限设置。各个环境变量的配置具体如下（更多信息可参考 [Configuration - HedgeDoc](https://docs.hedgedoc.org/configuration/)）：

| 环境变量                    | 内容                       | 值                                                    |
| --------------------------- | -------------------------- | ----------------------------------------------------- |
| `CMD_DB_URL`                | 数据库路径                 | `postgres://hedgedoc:password@database:5432/hedgedoc` |
| `CMD_DOMAIN`                | 域名                       | `hedgedoc.leverimmy.top`                              |
| `CMD_PORT`                  | 端口                       | `3000`                                                |
| `CMD_ALLOW_ANONYMOUS`       | 是否允许匿名创建文档       | `false`                                               |
| `CMD_ALLOW_ANONYMOUS_EDITS` | 是否允许匿名用户编辑       | `true`                                                |
| `CMD_DEFAULT_PERMISSION`    | 新建文档时，文档的默认权限 | `private`                                             |
| `CMD_ALLOW_EMAIL_REGISTER`  | 是否允许邮箱注册           | `false`                                               |
| `CMD_ALLOW_GRAVATAR`        | 是否使用 Gravatar 作为头像 | `false`                                               |
| `CMD_PROTOCOL_USESSL`       | 是否使用 SSL 协议          | `true`                                                |

### 启动容器

在前台运行：

```shell
docker-compose up
```

停止并删除：

```shell
docker-compose down
```

停止并删除，同时删除卷：

```shell
docker-compose down -v
```

在后台运行：

```shell
docker-compose up -d
```

## 设置 Admin 账号

在 Docker 中容器**正在运行**的时候，执行

```shell
docker exec -it hedgedoc-app-1 /hedgedoc/bin/manage_users --add admin@leverimmy.top
```

这里的 `hedgedoc-app-1` 是 HedgeDoc Docker 的**容器名称**。随后会让你输入密码。

这里需要注意，输入密码时按下 BackSpace 键**并不会退格**，也就是说，如果输入

```
passA<BackSpace>word
```

则密码为 `passAword`。

## 域名解析与 SSL 证书

### 域名解析

添加域名解析记录如下：

| 主机记录 | 记录类型 | 解析请求来源 | 记录值         | TTL     |
| -------- | -------- | ------------ | -------------- | ------- |
| hedgedoc | A        | 默认         | `<服务器地址>` | 10 分钟 |

### SSL 证书

为了能够使用 HTTPS 进行连接，需要为 `hedgedoc.leverimmy.top` 创建 SSL 证书，我这里使用的是“个人测试证书（原免费证书）”。如果“证书剩余数量”不够的话，则需要购买证书。~~在网上找找怎么免费创建 SSL 证书的教程就好~~

下载服务器类型为 **Nginx** 的 SSL证书，最终可以获得 `hedgedoc.leverimmy.top.pem` 和 `hedgedoc.leverimmy.top.key` 两个文件。我将这两个文件放到了 `/usr/local/nginx/SSL/` 里。

## 配置 Nginx

### 增加 Nginx 的 Configure Argument

需要安装 `http_v2_module` 和 `http_ssl_module` 这两个模块。在 `/usr/local/nginx-1.26.1` 目录下，

```shell
./configure --with-http_v2_module --with-http_ssl_module
make
sudo make install
```

### 配置 `nginx.conf`

修改 `/usr/local/nginx/conf/nginx.conf` 如下：

```properties
worker_processes  1;

events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;

    sendfile        on;

    keepalive_timeout  65;

    # [BEGIN] These are for my blog.
    server {
        listen       80;
        server_name  leverimmy.top;

        location / {
            root   /home/www/hexo;
            index  index.html index.htm;
        }
        
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   /home/www/hexo;
        }
    }
    
    server {
        listen       443 ssl;
        server_name  leverimmy.top;

        ssl_certificate      /usr/local/nginx/SSL/leverimmy.top.pem;
        ssl_certificate_key  /usr/local/nginx/SSL/leverimmy.top.key;

        ssl_session_cache    shared:SSL:1m;
        ssl_session_timeout  5m;
	    ssl_protocols TLSv1.2 TLSv1.3;
        ssl_ciphers  HIGH:!aNULL:!MD5;
        ssl_prefer_server_ciphers  on;

        location / {
            root   /home/www/hexo;
            index  index.html index.htm;
        }
    }
    # [END] These are for my blog.
    
    # [BEGIN] These are for HedgeDoc.
    map $http_upgrade $connection_upgrade {
        default upgrade;
        ''      close;
    }

    server {
        listen 80;
        listen [::]:80;
        # change this to your own domain
        server_name hedgedoc.leverimmy.top;

        location / {
            return 301 https://$host$request_uri;
        }
    }

    server {
        # change this to your own domain
        server_name hedgedoc.leverimmy.top;

        location / {
            proxy_pass http://127.0.0.1:3000;
            proxy_set_header Host $host; 
            proxy_set_header X-Real-IP $remote_addr; 
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for; 
            proxy_set_header X-Forwarded-Proto $scheme;
        }

        location /socket.io/ {
            proxy_pass http://127.0.0.1:3000;
            proxy_set_header Host $host; 
            proxy_set_header X-Real-IP $remote_addr; 
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for; 
            proxy_set_header X-Forwarded-Proto $scheme;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection $connection_upgrade;
        }

        listen [::]:443 ssl http2;
        listen 443 ssl http2;
        # change this to your own path
        ssl_certificate      /usr/local/nginx/SSL/hedgedoc.leverimmy.top.pem;
        ssl_certificate_key  /usr/local/nginx/SSL/hedgedoc.leverimmy.top.key;

        # Mozilla Guideline v5.4, nginx 1.17.7, OpenSSL 1.1.1d, intermediate configuration
        ssl_protocols TLSv1.2 TLSv1.3;
        ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
        ssl_prefer_server_ciphers off;

        ssl_session_timeout 1d;
        ssl_session_cache shared:SSL:1m;  # about 40000 sessions
        ssl_session_tickets off;
    }
    # [END] These are for HedgeDoc.
}
```

更改 `nginx.conf` 之后，在 `/usr/local/nginx/sbin/` 目录下，执行

```shell
sudo ./nginx -s stop
sudo ./nginx
```

即可更新 Nginx 的配置。

## 总结

前前后后花了大概两周的时间，终于是把 HedgeDoc 部署好了。

在我博客上部署 HedgeDoc 的主要的目的有以下几个：

- 可以替代**飞书**，用于同时协作共享 Markdown 文档。
- 可以替代 **Ubuntu Pastebin**，分享一些代码片段。
- 可以替代 **Slidev**，编写一些简单的 PPT。

## 参考资料

1. [How to Self-Host a HedgeDoc Instance Using Docker: Installation, HTTPS, Backups, Updates, User Management - David Augustat](https://davidaugustat.com/web/hedgedoc-on-docker-compose)
2. [Getting started with HedgeDoc](https://tech.interfluidity.com/2023/08/23/getting-started-with-hedgedoc/index.html#nginxconf)
3. [Html not loading stylesheet - running in docker container](https://community.hedgedoc.org/t/html-not-loading-stylesheet-running-in-docker-container/375)
