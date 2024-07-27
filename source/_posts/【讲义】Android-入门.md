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

<!--more-->

## Android 简介



## 课前准备

### 环境配置

[安装 Android Studio  | Android Developers (google.cn)](https://developer.android.google.cn/studio/install?hl=zh-cn)

[下载 Android Studio 和应用工具 - Android 开发者  | Android Developers (google.cn)](https://developer.android.google.cn/studio?hl=zh-cn)

> **注意**：目前不支持采用 ARM CPU 的 Windows/Linux 计算机。

### Welcome

```properties title="gradle-wrapper.properties"
distributionUrl=https\://mirrors.cloud.tencent.com/gradle/gradle-8.9-all.zip
```

```kotlin title="settings.gradle.kts"
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
        // Modified
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
        // Modified
        mavenCentral()
    }
}

// ...
```



## 基础知识

## 参考资料

- 感谢 [Clancy](https://github.com/Clancy-Zhu/) 在 2023 年暑期培训中的 [Android 部分的讲义](https://summer23.net9.org/frontend/android/)。
- 感谢[菜鸟教程 - Android](https://www.runoob.com/android/)，提供了一份详尽但略显复杂的讲义框架。

## 课后作业

详情请见 [sast-summer-training-2024/sast2024-android](https://github.com/sast-summer-training-2024/sast2024-android)。

