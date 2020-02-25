# Windows 系统登录虚拟机

## 命令行：使用 SSH 登录 {#ssh}

Windows 需要安装 SSH 客户端，有各种选择：

- PuTTY ([官方下载](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html))
- XShell ([NetSarang 官方下载](https://www.netsarang.com/zh/free-for-home-school/))
- Termius ([官方下载](https://termius.com/windows)，另有 [Windows 10 应用商店版](https://www.microsoft.com/store/productId/9NK1GDVPX09V))

另外，Windows 平台有各种 Linux / Unix 环境模拟软件，例如

- Git Bash (MSYS2)
- Cygwin
- Windows Subsystem for Linux

对于以上平台，请参考 [Linux 系统的登录方式](login-linux.md)

下面以免费开源的 PuTTY 为例在 Windows 上连接 Vlab 虚拟机。

### PuTTY 登录方式 {#putty}

安装过程很简单，直接 \[下一步\] 到底即可。安装完成后，找到并打开 PuTTY，如图

![PuTTY in Windows 10 Start Menu](../images/putty-win10-tile.png){: .img-center }

在 Host name 一栏填入 `202.38.75.252`，端口号填写网页管理界面给出的端口号（在 `ssh -p` 后面的一个 10001 ~ 29999 之间的数字），点击连接，如图：

![PuTTY configuration](../images/putty-config.png){: .img-center }

第一次连接时会提示你选择信任虚拟机，点 Yes 即可：

![PuTTY host key prompt](../images/putty-host-key.png){: .img-center }

然后 PuTTY 会要求你输入用户名和密码，用户名输入 root，密码输入你在创建虚拟机时设定的 root 用户密码（输入的密码没有回显），按回车即可：

![PuTTY screen](../images/putty-login.png){: .img-center }

PuTTY 还有一些高级的使用方法，例如你可以保存这些连接信息，以后可以更方便地连接虚拟机。这里有两篇不错的使用教程：

- <https://www.hostarr.com/putty-tutorial/>
- <https://www.cnblogs.com/yuwentao/archive/2013/01/06/2846953.html>

## 图形界面：使用 VNC 登录 {#vnc}

!!! info "注意"

    该登录方式只适用于名称中带有 `desktop` 的虚拟机镜像。

Vlab 平台目前支持 RealVNC 和 TigerVNC 两种客户端。

### 使用 RealVNC 登录

以 Windows 10 系统为例，[下载 RealVNC 客户端](https://www.realvnc.com/en/connect/download/viewer/windows/)并安装。安装好后在开始菜单中找到 RealVNC 的图标，如下图所示：

![RealVNC in Windows 10 Start Menu](../images/realvnc-win10-tile.png){: .img-center }

打开后的主界面如图所示，在地址栏输入 `vlab.ustc.edu.cn`，按回车连接：

![RealVNC Main Screen](../images/realvnc-main-screen-win10.png){: .img-center }

这里提示要输入用户名和密码，输入学号（或工号）和网页平台的登录密码即可登录：

![RealVNC Authentication Dialog](../images/realvnc-auth-screen-win10.png){: .img-center }

!!! question "密码是什么？"

    VNC 登录方式使用 Vlab 平台的登录密码。[还没设置？](web.md#change-password)

登录后即可看到桌面并开始使用。

### 使用 TigerVNC 登录 {#tigervnc}

以 Windows 10 系统为例，从 [TigerVNC 官方下载页面](https://bintray.com/tigervnc/stable/tigervnc)下载 `vncviewer.exe` 或 `vncviewer64.exe`（64 位系统），如图：

![TigerVNC Viewer Icon](../images/tigervnc-win-icon.png){: .img-center .img-border }

双击打开，在服务器地址处填入 `vlab.ustc.edu.cn`，如图：

![TigerVNC Connection Info](../images/tigervnc-connection-win10.png){: .img-center }

这里提示要输入用户名和密码，输入学号（或工号）和网页平台的登录密码即可登录：

![TigerVNC Authentication Dialog](../images/tigervnc-authentication-win10.png){: .img-center }

### 桌面设置

关于一些常用的桌面设置，如

- 修改 VNC 分辨率
- 中文输入法

等，请参阅[桌面设置](desktop-settings.md)页面。
