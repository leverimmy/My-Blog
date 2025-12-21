---
title: 如何给自己的个人网站申请 SSL 证书
tags:
  - 服务器
categories:
  - 技术
mathjax: true
toc: true
date: 2025-12-21 23:29:01
password:
id: How-to-Apply-for-SSL-Certificate-for-Your-Personal-Website
---

阿里云上已经不再提供原来的有效期为 12 个月的免费 SSL 证书了，有效期缩短为 90 天。也就是说，每隔 3 个月就需要重新申请一次。这就无可避免地需要在服务器上配置证书，于是我写下这篇文章，记录一下申请 SSL 证书的过程，以后就直接参考这篇文章的流程和代码即可。

<!--more-->

在阿里云的 `数字证书管理服务/SSL证书管理` 页面下，给域名 `leverimmy.top` 申请 `个人测试证书（原免费证书）`，然后下载适用于 Nginx 的 pem/key 格式的证书包。

将证书分别上传到服务器的 `/usr/local/nginx/SSL` 目录下：

```bash
scp ./* root@47.120.48.46:/usr/local/nginx/SSL
```

然后登录服务器，重启 Nginx：

```bash
ssh root@47.120.48.46
cd /usr/local/nginx/sbin/
sudo ./nginx -s stop
sudo ./nginx
```

发现这个过程中并没有什么难点，主要是记录一下以后方便自己参考。
