# 通过 RDP 远程桌面登录虚拟机

!!! failure "尚未完成"

    目前相关服务或功能尚未开放，本页面所述的内容仅供参考。

!!! example "支持的虚拟机和客户端"

    RDP 登录方式仅支持 Windows KVM 虚拟机。

    RDP 登录方式支持包括 Windows, macOS, Linux, iOS 和 Android 在内的客户端系统。

## 获取 RDP 客户端

=== "Windows"

    Windows 操作系统自带了 RDP 客户端，你可以直接在 **开始菜单:material-chevron-right:Windows 附件:material-chevron-right:远程桌面连接** 中找到它。

=== "macOS"

    从 Mac App Store 获取 [Microsoft Remote Desktop](https://apps.apple.com/us/app/microsoft-remote-desktop/id1295203466)。

    出于未知的原因，该应用程序不在中国区 Mac App Store 提供。可以参考 [Microsoft Docs: Get started with the macOS client](https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-mac)，下载 Microsoft Remote Desktop Beta。

=== "Linux"

    Linux 没有微软官方提供的 RDP 客户端，但是经过我们测试，开源软件 Remmina 能够完美使用 Vlab 的 RDP 登录方式。

    通常情况下，直接从操作系统的软件源里安装 `remmina-plugin-rdp` 即可，其他信息请参考 [Remmina 的说明](https://remmina.org/how-to-install-remmina/)。

=== "iOS"

    从 App Store 获取 [Microsoft Remote Desktop](https://apps.apple.com/in/app/microsoft-remote-desktop/id714464092)。

=== "Android"

    对于 Android 7 及以下版本，请从 Google Play 安装 [Remote Desktop 8](https://play.google.com/store/apps/details?id=com.microsoft.rdc.android)。

    对于 Android 8 及以上版本，请从 Google Play 安装 [Remote Desktop](https://play.google.com/store/apps/details?id=com.microsoft.rdc.androidx)。

## 获取 RDP 登录信息

!!! failure "尚未完成"

    目前相关服务或功能尚未开放，因此本节暂时没有内容。
