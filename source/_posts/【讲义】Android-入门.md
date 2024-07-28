---
title: 【讲义】Android 入门
tags:
  - Android
categories:
  - 讲义
mathjax: true
toc: true
date: 2024-06-25 00:16:27
password:
id: Introduction-to-Android
---

这是 [2024 年清华大学计算机系学生科协暑期培训](https://summer24.net9.org/) Android 部分的讲义。

**前置知识**：Git、Java。

> **注意**：虽说我们将会进行 Android 应用的开发，但是你并不需要拥有一台 Android 手机。

<!--more-->

## Android 简介



## 课前准备

### 环境配置

#### 下载 Android Studio

> **注意**：目前不支持采用 ARM CPU 的 Windows/Linux 计算机。

请从官网上下载并安装 Android Studio。官方文档 [安装 Android Studio](https://developer.android.google.cn/studio/install?hl=zh-cn) 给出了一个详尽的（甚至包含视频演示）下载并安装 Android Studio 的方法。

安装时请务必安装 Android Virtual Device。

![安装 Android Virtual Device](/gallery/Introduction-to-Android/install-avd.png)

#### 安装 SDK

大概率你的电脑上并没有 Android SDK。在安装完 Android Studio 并打开后，它有可能会提示你“Missing SDK”。

![未找到 SDK](/gallery/Introduction-to-Android/missing-sdk.png)

此时你应该跟随安装程序，继续安装 SDK。将红色框内所有能选的选项均选中（你的界面可能与我的不同，多的也都选上）。

![安装 SDK](/gallery/Introduction-to-Android/install-sdk.png)

然后进行漫长的等待即可。

![下载 SDK](/gallery/Introduction-to-Android/download-sdk.png)

### Hello world!

#### 新建项目

我们在 Android Studio 里新建一个项目，模板我这里选用的是 Bottom Navigation Views Activity，大家也可以多多尝试，看这些模板有什么不同。

![新建项目模板](/gallery/Introduction-to-Android/new-project-template.png)

然后选择**编程语言**、**最低 SDK 版本**和**构建语言**。我分别选择的是 **Java**、**API 25** 和 **Kotlin DSL**。

![新建项目配置](/gallery/Introduction-to-Android/new-project-config.png)

完成之后 Gradle 会进行一次构建。如果不出意外的话，构建应该会**失败**。这是因为项目的部分包（package）需要联网获取；而在国内，由于某些原因，对那些网络资源的访问不够顺畅。因此我们需要修改配置，将其换为国内镜像。

#### 修改配置

首先，修改 `gradle/wrapper/gradle-wrapper.properties`，将 Gradle 镜像改为腾讯镜像，同时将版本设置为 8.9。

**`gradle-wrapper.properties` 原文件（节选）**

```properties gradle-wrapper.properties
distributionUrl=https\://services.gradle.org/distributions/gradle-8.7-bin.zip
```

**`gradle-wrapper.properties` 修改后的文件（节选）**

```properties gradle-wrapper.properties
distributionUrl=https\://mirrors.cloud.tencent.com/gradle/gradle-8.9-all.zip
```

其次，修改 `settings.gradle.kts`，将 Maven 镜像改为阿里云镜像。

**`settings.gradle.kts` 原文件（节选）**

```kotlin settings.gradle.kts
pluginManagement {
    repositories {
        google {
            content {
                includeGroupByRegex("com\\.android.*")
                includeGroupByRegex("com\\.google.*")
                includeGroupByRegex("androidx.*")
            }
        }
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}
```

**`settings.gradle.kts` 修改后的文件（节选）**

```kotlin settings.gradle.kts
pluginManagement {
    repositories {
        google {
            content {
                includeGroupByRegex("com\\.android.*")
                includeGroupByRegex("com\\.google.*")
                includeGroupByRegex("androidx.*")
            }
        }

        maven { url = uri("https://maven.aliyun.com/repository/gradle-plugin") }
        maven { url = uri("https://maven.aliyun.com/repository/google") }
        maven { url = uri("https://maven.aliyun.com/repository/jcenter") }
        maven { url = uri("https://maven.aliyun.com/repository/public") }
        mavenLocal()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        maven { url = uri("https://maven.aliyun.com/repository/gradle-plugin") }
        maven { url = uri("https://maven.aliyun.com/repository/google") }
        maven { url = uri("https://maven.aliyun.com/repository/jcenter") }
        maven { url = uri("https://maven.aliyun.com/repository/public") }
        mavenLocal()
        mavenCentral()
    }
}
```

至此，配置已修改完毕。

重新进行 Gradle Project Sync 即可完成 Gradle 构建。如果下方出现 `BUILD SUCCESSFUL in **s` 的字样，这说明你的第一个 Android 应用程序就已经构建完成了！

![Gradle 重新构建](/gallery/Introduction-to-Android/gradle-sync.png)

#### 新建虚拟机

通过 Device Manager 添加一台新的虚拟机。

![Device Manager](/gallery/Introduction-to-Android/device-manager.png)

选择机型，我选择的是 Pixel 8。

![Select Hardware](/gallery/Introduction-to-Android/select-hardware.png)

选择虚拟机上 SDK 版本。我选择的是 API 25。如果你还记得的话，我们在新建项目时设置了最低 SDK 版本。也就是说，我们的程序在 API 小于 25 的机器上均不能运行。所以这里至少需要选择 API 25。

![System Image](/gallery/Introduction-to-Android/system-image.png)

#### 构建并将应用安装到虚拟机上

点击“运行”按钮即可。

![Run App](/gallery/Introduction-to-Android/run-app.png)

最后在虚拟机上的运行结果应当如下：

![Virtual Device](/gallery/Introduction-to-Android/virtual-device.png)

## Android 项目结构



## Activity



## Fragment



## Service、Adapter 和 Intent



## 常用组件

### LinearLayout



### GridLayout



### TableLayout



### TextView



### Button



### Toast



### AlertDialog



### SharedPreferences



## 常用工具

### JSON

### Log





## 参考资料

- 感谢 [Clancy](https://github.com/Clancy-Zhu/) 在 2023 年暑期培训中的 [Android 部分的讲义](https://summer23.net9.org/frontend/android/)。
- 感谢[菜鸟教程 - Android](https://www.runoob.com/android/)，提供了一份详尽但略显复杂的讲义框架。

## 课后作业

详情请见 [sast-summer-training-2024/sast2024-android](https://github.com/sast-summer-training-2024/sast2024-android)。

