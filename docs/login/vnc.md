# 通过 VNC 远程桌面登录虚拟机

!!! example "支持的虚拟机和客户端"

    VNC 登录方式仅支持 Linux LXC 虚拟机，这也是 Vlab 提供的默认虚拟机类型。

    VNC 登录方式支持从[浏览器直接登录](browser.md)，也支持包括 Windows, macOS, Linux, iOS 和 Android 在内的客户端系统。
    
!!! info "注意"

    该登录方式只适用于名称中带有 `desktop` 的虚拟机镜像。

## 在浏览器中直接登录 {#browser}

请移步至[浏览器直接登录](browser.md)一页。

## 使用 TigerVNC 登录（推荐） {#tigervnc}

??? tip "客户端下载"

    * Windows，macOS 和 Linux：[GitHub](https://github.com/TigerVNC/tigervnc/releases/latest)

    * Ubuntu 和 Debian：`sudo apt-get install tigervnc-viewer`

    * CentOS, Fedora 和 RHEL：`sudo yum install tigervnc`

    * Arch Linux 和 Manjaro：`sudo pacman -S tigervnc`

=== "Windows"

    以 Windows 10 系统为例，[下载 TigerVNC 客户端](https://vlab.ustc.edu.cn/downloads/vncviewer64-1.11.0.exe)，如图：

    ![TigerVNC Viewer Icon](../images/tigervnc-win-icon.png){: .img-border }

    在服务器地址处填入 `vlab.ustc.edu.cn`，并点击 **Connect**：

    ![TigerVNC Connection Info](../images/tigervnc-connection-win10.png)

    这里提示要输入用户名和密码，输入学号（或工号）和网页平台的登录密码：

    ![TigerVNC Authentication Dialog](../images/tigervnc-authentication-win10.png)

    登录后即可看到桌面并开始使用。

=== "macOS"

    [下载 macOS 下的 TigerVNC 客户端](https://vlab.ustc.edu.cn/downloads/TigerVNC-1.11.0.dmg)并安装（与安装其他的应用一样，打开 dmg 文件并将应用拖动到 Application 目录即可）。

    打开 TigerVNC 客户端，如图所示输入 `vlab.ustc.edu.cn`，点击 `Connect`。

    ![TigerVNC Main Screen](../images/tigervnc-startup-macos.png)

    这里提示要输入用户名和密码，输入学号（或工号）和网页平台的登录密码即可登录：

    ![TigerVNC Authentication Dialog](../images/tigervnc-authentication-macos.png)

    登录后即可看到桌面并开始使用。

=== "Linux"

    Linux 系统可以从 GitHub 下载通用型客户端（格式为 `.tar.gz`），也可以从各大发行版的软件源直接获取。

    * Ubuntu 和 Debian：`sudo apt-get install tigervnc-viewer`

    * CentOS 和 Fedora：`sudo yum install tigervnc`

    * Arch Linux 和 Manjaro：`sudo pacman -S tigervnc`

    其界面和操作与 macOS 相同，请参考 macOS 的使用说明。

!!! question "拥有多个虚拟机？"

    如果你拥有多个虚拟机，登录时请输入 `学号:虚拟机编号` 的形式，例如 `PB17000000:1234`。

!!! question "密码是什么？"

    VNC 登录方式使用 Vlab 平台的登录密码。[还没设置？](../web.md#change-password)

## 使用 RealVNC 客户端登录 {#realvnc}

??? tip "客户端下载"

    在 [RealVNC 官网][realvnc-all]选择你的系统平台，点击 **Download VNC Viewer** 即可下载，如图：

    ![RealVNC Download Page](../images/realvnc-download.png){: .img-border }

    另外，iOS 设备可以从 [App Store][realvnc-ios] 获取 VNC Viewer，Android 设备可以从 [Google Play][realvnc-android] 或其他应用商店获取 VNC Viewer。

  [realvnc-all]: https://www.realvnc.com/en/connect/download/viewer/
  [realvnc-ios]: https://apps.apple.com/us/app/vnc-viewer-remote-desktop/id352019548
  [realvnc-android]: https://play.google.com/store/apps/details?id=com.realvnc.viewer.android

=== "Windows"

    以 Windows 10 系统为例，[下载 RealVNC 客户端](https://www.realvnc.com/en/connect/download/viewer/windows/)并安装。安装好后在开始菜单中找到 RealVNC 的图标，如下图所示：

    ![RealVNC in Windows 10 Start Menu](../images/realvnc-win10-tile.png)

    打开后的主界面如图所示，在地址栏输入 `vlab.ustc.edu.cn`，按回车连接：

    ![RealVNC Main Screen](../images/realvnc-main-screen-win10.png)

    与 TigerVNC 相同，输入学号（或工号）和网页平台的登录密码即可登录：

    ![RealVNC Authentication Dialog](../images/realvnc-auth-screen-win10.png)

=== "macOS"

    下载 macOS 下的 [RealVNC 客户端](https://www.realvnc.com/en/connect/download/viewer/macos/)并安装（与安装其他的应用一样，打开 dmg 文件并将应用拖动到 Application 目录即可）。

    打开 VNC Viewer，打开后的主界面如图所示，在地址栏输入 `vlab.ustc.edu.cn`，按回车连接：

    ![RealVNC Main Screen](../images/realvnc-main-screen-macos.png)

    如果出现以下画面，选择 **Continue**。

    ![RealVNC Server not recognized](../images/realvnc-auth-warning-macos.png)

    与 TigerVNC 相同，输入学号（或工号）和网页平台的登录密码即可登录：

    ![RealVNC Authentication Dialog](../images/realvnc-auth-screen-macos.png)

=== "Linux"

    根据发行版的不同，选择 DEB，RPM 格式或 Standalone 版的 [RealVNC 客户端](https://www.realvnc.com/en/connect/download/viewer/linux/)，并使用操作系统的包管理器安装（Standalone 版不需要安装）。

    Linux 客户端的界面和操作与 macOS 相同，请参考 macOS 的使用说明。

=== "iOS / Android"

    从 [App Store][realvnc-ios]、[Google Play][realvnc-android] 或其他应用商店获取 VNC Viewer。

    打开 VNC Viewer 应用，添加服务器，在 Address 处输入 `vlab.ustc.edu.cn`，并填写一个可以辨认的名称（如 Vlab），然后点击刚刚新建的项目即可连接。

    登录信息和提示等请参考 macOS 的使用说明。

## 桌面设置 {#desktop-settings}

### 修改分辨率 {#change-resolution}

!!! tip "提示"

    更高的分辨率需要更快的网速，若网速不够，VNC 会自动降低显示质量（分辨率不变，颜色深度降低），可能会影响显示效果。建议根据自己的使用环境选择合适的分辨率。

    默认的桌面分辨率为 1024\*768，适合大多数人使用。

如果你需要修改分辨率，可以在左上角找到 **设置 → 显示**，如图：

![Set VNC resolution](../images/vnc-change-resolution.png)

??? info "2020 年 2 月 22 日以前的虚拟机"

    2020 年 2 月 22 日及以前创建的虚拟机（ID 小于等于 1080），修改 VNC 分辨率可以使用系统内提供的 `vlab-vnc` 命令行工具。

    打开终端，输入 `vlab-vnc` 即可查看支持的命令与分辨率选项。输入 `vlab-vnc set-res 1024x768` 即可将分辨率修改为 1024\*768。由于分辨率的修改需要重启 VNC 服务，可以使用 `vlab-vnc restart` 命令重启。**这会关闭已打开所有桌面程序**，请注意保存未完成的工作，以免丢失。

    ![Set VNC resolution from terminal](../images/vnc-change-resolution-old.png)

### 设置中文输入法 {#chinese-ime}

!!! success "新虚拟机已默认启用中文输入法"

    以下内容只有 2020 年 2 月 22 日及以前创建的虚拟机（ID 小于等于 1080）需要设置。2 月 23 日以后创建的新虚拟机（ID 大于等于 1095）已默认启用中文输入法。

系统自带的输入法为 IBus，可以手动启用中文输入。在左上角找到 Applications → Settings → IBus Preferences 设置：

![Menu - IBus Preferences](../images/menu-ibus-settings.png)

在 Input Method 选项卡点 Add，然后在 Chinese 里找到 Pinyin，再次点击右下角的 Add 即可：

![IBus Preferences - Add Chinese Pinyin](../images/ibus-add-pinyin.png)

添加成功后可以在右上角切换中文与英文输入法，也可以按 <kbd>Shift</kbd> 键在中文输入法中切换中英文输入。
