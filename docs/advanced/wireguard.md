---
icon: simple/wireguard
---

# WireGuard 内网 VPN

你可以在虚拟机管理界面的顶部导航栏中找到【内网 VPN】选项，如图：

![内网 VPN](../images/navbar-wireguard.png)

点击【新建连接】可以获得一个 WireGuard 配置文件（.conf），你可以将其导入到 WireGuard 客户端中，连接后即可访问 Vlab 内网。

## 使用限制 {#limits}

- 每个 WireGuard 配置文件仅能同时在一台设备上使用。你可以将该配置导入多台设备，但同时只能有一台设备处于连接状态。

    默认情况下，每个用户可以自主申请 1 个 WireGuard 连接配置。如果你需要在多台设备上同时使用 WireGuard，请联系 Vlab 管理员申请额外的配置数量。

- WireGuard 连接仅能访问 Vlab 内网，包括 Vlab 虚拟机及其他已连接的 WireGuard 客户端，但无法访问科大校园网及互联网（教育网出口）。
