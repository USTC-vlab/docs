# 手动安装桌面环境

!!! warning "注意"
    本节内容只适用于熟悉 Linux 操作系统的用户，否则建议使用已配置好的桌面环境。

Vlab 默认提供的桌面环境为 Xfce4，如果你想安装 Mate, LXDE 等其他桌面环境，可以按照如下指示操作。以下将以在 Debian 10 上安装 Mate 桌面环境为例。

## 安装 LightDM 和 VNC

为了与 Vlab 的 VNC 后端连接，需要安装我们提供的 vlab-vnc 软件包（限 Debian / Ubuntu，暂无 RPM 安装包）。

先下载软件包

```shell
wget https://vlab.ustc.edu.cn/repo/vlab-vnc.deb
```

安装 vlab-vnc

```shell
apt update
apt install ./vlab-vnc.deb
```

在安装过程中会询问键盘布局，选择 English (US) 即可。

## 安装桌面环境

使用 tasksel 安装桌面环境。

```shell
tasksel
```

进入交互式页面，选择你需要的桌面环境后输入回车即可安装，这里以 MATE 为例。

![Tasksel](../images/install-desktop-tasksel.png){: .img-center }

安装完成后重启系统便可以使用浏览器的在线登录或使用 RealVNC 客户端登录你的虚拟机，具体做法可参考左侧文档。进一步的配置，如建立新用户，安装中文环境与输入法等请参考网络上的 Linux 教程。

!!! info "注意"
    必须使用 LightDM 桌面管理器。若安装桌面环境时自动安装了其他桌面管理器，请使用命令 `dpkg-reconfigure lightdm` 切换回 LightDM 桌面管理器。
