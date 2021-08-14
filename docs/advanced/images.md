# 虚拟机镜像

镜像是虚拟机的模板，包含了完整的虚拟机操作系统。不同的镜像包含的不同的操作系统配置（例如 Ubuntu, Debian 或者 CentOS），不同的操作系统在使用过程中也会有一些不同，请根据自己的实际需求选择。

## 虚拟机类型选择 {#vm-selection}

Vlab 提供的默认虚拟机类型为 Linux LXC，拥有最好的性能，能够使用 Vlab 实验软件套装进行多种课程实验，也能够使用 Docker，适合大多数同学使用。但是由于虚拟化技术限制，LXC 虚拟机无法使用文件系统挂载、回环设备（loop device）、内核模块等 Linux 高级特性，也无法在其中嵌套运行 KVM 虚拟机。

Linux KVM 是完整的虚拟机，能够根据需要使用任意版本的 Linux 内核，也能够使用回环设备和运行嵌套 KVM 虚拟机等《操作系统》课程必需的 Linux 高级特性。但是由于虚拟化技术限制，KVM 虚拟机没有 Vlab 实验软件套装，你可以自行安装你需要的实验软件，但是它们将会占用硬盘空间。

Windows KVM 仅为有需要的用户提供，由于 Windows 的系统设计与 Linux 完全不同，我们无法为 Windows 提供任何技术支持。

??? example "虚拟机功能比较"

    | 功能特性 | Linux LXC | Linux KVM | Windows KVM |
    | :------: | :------: | :------: | :------: |
    | [使用 VNC 登录](../login/vnc.md) | :fontawesome-solid-check-circle:{: .limegreen } | :fontawesome-solid-times-circle:{: .orangered } | :fontawesome-solid-times-circle:{: .orangered } |
    | [使用 SSH 登录](../login/ssh.md) | :fontawesome-solid-check-circle:{: .limegreen } | :fontawesome-solid-check-circle:{: .limegreen } | :fontawesome-solid-times-circle:{: .orangered } |
    | [使用 RDP 登录](../login/rdp.md) | :fontawesome-solid-times-circle:{: .orangered } | :fontawesome-solid-times-circle:{: .orangered } | :fontawesome-solid-check-circle:{: .limegreen } |
    | Vlab 实验软件套装 | :fontawesome-solid-check-circle:{: .limegreen } | :fontawesome-solid-times-circle:{: .orangered } | :fontawesome-solid-times-circle:{: .orangered } |
    | Linux 高级特性 | :fontawesome-solid-times-circle:{: .orangered } | :fontawesome-solid-check-circle:{: .limegreen } | :fontawesome-solid-times-circle:{: .orangered } |
    | 技术支持 | :fontawesome-solid-question-circle:{: .darkcyan } | :fontawesome-solid-question-circle:{: .darkcyan } | :fontawesome-solid-times-circle:{: .orangered } |

## 镜像选择 {#image-selection}

名称中带有 `desktop` 的镜像包含了桌面环境，可以使用我们提供的 VNC 登录方式；名称中不含 `desktop` 的镜像则无法使用 VNC 方式登录，我们会提供一个端口用于 SSH 命令行登录。具体登录方式请在左侧根据你的环境查看相应的文档。

!!! info ""

    预装桌面环境的镜像默认用户为 ubuntu 或 vlab（无密码，见下方表格），而不带桌面环境的镜像只有初始的 root 用户，可以通过 SSH 登录后自行添加更多用户。

名称中的 `ubuntu`, `debian`, `centos` 等表示该镜像构建时基于的 [Linux 发行版](https://zh.wikipedia.org/zh-hans/Linux%E5%8F%91%E8%A1%8C%E7%89%88)。如果你对 Linux 不熟悉的话，可以参考校 Linux 用户协会的 [Linux 101 课程讲义](https://101.lug.ustc.edu.cn/)或网上的其他教程。

对于大多数同学来说，我们建议你选择默认的镜像（名称以 `vlab01` 开头，即编号为 01 的镜像），我们提供了计算机系本科学习实验所需要的必备软件（如 Xilinx Vivado），可以为你省去自己安装配置这些软件的负担，且这些软件不占用你的虚拟机存储空间。

### 镜像一览 {#image-content}

| 镜像编号 | 系统版本 | 默认用户 | 桌面环境 | 额外软件 |
| :------: | :------: | :------: | :------: | :------: |
| 01 | Ubuntu 20.04 | root/ubuntu | MATE | Vlab 实验软件套装 |
| 03 | Debian 10 | root/vlab | MATE | Vlab 实验软件套装 |
| 04 | Ubuntu 18.04 | root/ubuntu | Xfce4 | Vlab 实验软件套装 |
| 11 | Ubuntu 18.04 | root | 无 | 无 |
| 12 | Debian 10 | root | 无 | 无 |
| 99 | 测试版本，请勿使用 | root | 无 | 无 |

其中【Vlab 实验软件套装】包含了以下软件，并会随时增加或更新：

- Xilinx Vivado 2019.1
- Xilinx Vivado 2016.3
- MATLAB R2019a
- Wolfram Mathematica 12.3
- [网页版 Visual Studio Code](../apps/vscode.md)
- TeX Live 2020
- [Logisim](http://www.cburch.com/logisim/)
- Typora
