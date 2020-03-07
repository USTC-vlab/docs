# 常见问题

## 连接问题 {#connection}

- **虚拟机无法连接**

    请检查以下项目：

    - 虚拟机是否已开机？（新创建的虚拟机初始状态为关机状态）
    - 虚拟机创建时是否选择了带有桌面环境的镜像？（01~09 号镜像都带有桌面环境）

    下面的问题只会在使用 VNC 客户端登录时遇到：

    - 你所在的网络可能屏蔽了 5900 端口（VNC 协议的标准端口），如果很不幸真的遇到了这种情况，请使用浏览器登录

- **虚拟机连接时提示密码错误**

    远程桌面连接方式使用 [Vlab 平台的登录密码](web.md#change-password)，而不是虚拟机内的 root 密码。

## 软件限制 {#limits}

由于虚拟化平台限制，Vlab 提供的虚拟机默认无法使用容器（Docker, Kubernetes 等）和 [Snapcraft 软件包](https://snapcraft.io/)。

如有需要使用 Docker 或 K8s，请联系管理员手动开启（开启后重启生效），但 Snapcraft 软件包暂时超出了我们的能力范围。

## 镜像选择 {#image-selection}

- **镜像是什么？**

    镜像是虚拟机的模板，包含了完整的虚拟机操作系统。不同的镜像包含的不同的操作系统配置（例如 Ubuntu, Debian 或者 CentOS），不同的操作系统在使用过程中也会有一些不同，请根据自己的实际需求选择。

- **不同的镜像有什么区别？**

    名称中带有 `desktop` 的镜像包含了桌面环境，可以使用我们提供的 VNC 登录方式；名称中不含 `desktop` 的镜像则无法使用 VNC 方式登录，我们会提供一个端口用于 SSH 命令行登录。具体登录方式请在左侧根据你的环境查看相应的文档。

    !!! info ""

        预装桌面环境的镜像默认用户为 ubuntu 或 vlab（无密码，见下方表格），而不带桌面环境的镜像只有初始的 root 用户，可以通过 SSH 登录后自行添加更多用户。

    名称中的 `ubuntu`, `debian`, `centos` 等表示该镜像构建时基于的 [Linux 发行版](https://zh.wikipedia.org/zh-hans/Linux%E5%8F%91%E8%A1%8C%E7%89%88)。如果你对 Linux 不熟悉的话，可以参考校 Linux 用户协会的 [Linux 101 课程讲义](https://101.ustclug.org/)或网上的其他教程。

    如果你对默认的桌面环境不满意，且熟悉 Linux 系统，可以在无桌面环境的系统中参照 [手动安装桌面环境](install-desktop.md) 安装你喜欢的桌面环境。目前只有 Debian 与 Ubuntu 支持这样的做法。

- **我应该选择哪个镜像？**

    对于大多数同学来说，我们建议你选择默认的镜像（名称以 `vlab01` 开头，即编号为 01 的镜像），该镜像包含了计算机系本科学习实验所需要的必备软件（如 Xilinx Vivado），可以为你省去自己安装配置这些软件的负担。

    如果你只需要一个远程虚拟桌面，不需要计算机系课程实验的软件，可以选择 02 号镜像，该镜像包含了一个完整的 Ubuntu 桌面环境，适合其他同学学习 Linux 使用。

    如果你对 Linux 有一定经验，能够使用纯命令行的环境，那么你可以选择 11-13 号镜像，这些镜像不包含桌面环境（因此也无法使用 VNC 登录），可以将更多的资源用于你的实验工作。

### 镜像一览 {#image-content}

| 镜像编号 | 系统版本 | 默认用户 | 桌面环境 | 额外软件 |
| :------: | :------: | :------: | :------: | :------: |
| 01 | Ubuntu 18.04 | root/ubuntu | Xfce4 | Vivado 2019.1 |
| 02 | Ubuntu 18.04 | root/ubuntu | Xfce4 | 无 |
| 03 | Debian 10 | root/vlab | MATE | 无 |
| 11 | Ubuntu 18.04 | root | 无 | 无 |
| 12 | Debian 10 | root | 无 | 无 |
| 13 | CentOS 8.1 | root | 无 | 无 |
| 14 | CentOS 7.7 | root | 无 | 无 |

## 虚拟机安全 {#vm-security}

由于虚拟机的 SSH 端口是暴露在公网上的，因此如果你的 root 密码设置太弱，会有安全隐患。**任何以 root 登录虚拟机的人都拥有虚拟机的全部权限。**

我们建议，如果你不需要使用密码以 root 用户登录虚拟机，请关闭 root 用户的远程密码登录，你仍然可以使用 SSH 公钥登录你的虚拟机，并且这不影响你使用 `su` 命令和 `sudo` 命令。

关闭 root 密码登录的方式很简单，以 root 用户（或使用 `sudo`）打开文件 `/etc/ssh/sshd_config`，找到 `PermitRootLogin yes` 一行，修改为 `PermitRootLogin prohibit-password` 保存退出，然后执行 `systemctl reload ssh` 命令即可。

你也可以直接使用下面两条命令来完成这一步骤：

```shell
sudo sed -Ei '/^#?PermitRootLogin/c\PermitRootLogin prohibit-password' /etc/ssh/sshd_config
sudo systemctl reload ssh
```
