# Linux 系统登录虚拟机

## 使用 SSH 登录 {#ssh}

打开终端，安装 SSH 客户端：

* Ubuntu 和 Debian：`sudo apt-get install ssh`
* CentOS, Fedora 和 RHEL：`sudo yum install ssh-clients`
* Arch Linux 和 Manjaro：`sudo pacman -S openssh`

* 根据虚拟机登录 IP 地址和端口（例如，下图中地址为 `202.38.75.252`，端口为 `10003`），输入命令：

    ```shell
    ssh root@202.38.75.252 -p 10003
    ```

* 如果遇到 Warning，请输入 `yes`，然后输入之前设置的 root 密码，即可登录虚拟机

    ![](../images/ssh_4.png)

## 使用 VNC 登录 {#vnc}

!!! info "注意"

    该登录方式只适用于名称中带有 `desktop` 的虚拟机镜像。由于 TigerVNC 有已知的兼容性问题，我们只建议使用 RealVNC 客户端。

在 [RealVNC 官网的下载页面](https://www.realvnc.com/en/connect/download/viewer/linux/) 下载适合你的系统的安装包

* Ubuntu 和 Debian：选择 DEB x64，下载后安装：`sudo apt install ./文件名`

* CentOS, Fedora 和 RHEL：选择 RPM x64，下载后安装：`sudo yum localinstall 文件名`

* 其他系统：选择 Standalone x64，加上执行权限后直接运行

后续操作与 Windows 和 macOS 下使用 RealVNC 连接相同，可以在 [这里](../login-macos/#vnc) 继续阅读。
