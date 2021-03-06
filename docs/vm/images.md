# 虚拟机镜像

镜像是虚拟机的模板，包含了完整的虚拟机操作系统。不同的镜像包含的不同的操作系统配置（例如 Ubuntu, Debian 或者 CentOS），不同的操作系统在使用过程中也会有一些不同，请根据自己的实际需求选择。

## 镜像选择 {#image-selection}

名称中带有 `desktop` 的镜像包含了桌面环境，可以使用我们提供的 VNC 登录方式；名称中不含 `desktop` 的镜像则无法使用 VNC 方式登录，我们会提供一个端口用于 SSH 命令行登录。具体登录方式请在左侧根据你的环境查看相应的文档。

!!! info ""

    预装桌面环境的镜像默认用户为 ubuntu 或 vlab（无密码，见下方表格），而不带桌面环境的镜像只有初始的 root 用户，可以通过 SSH 登录后自行添加更多用户。

名称中的 `ubuntu`, `debian`, `centos` 等表示该镜像构建时基于的 [Linux 发行版](https://zh.wikipedia.org/zh-hans/Linux%E5%8F%91%E8%A1%8C%E7%89%88)。如果你对 Linux 不熟悉的话，可以参考校 Linux 用户协会的 [Linux 101 课程讲义](https://101.ustclug.org/)或网上的其他教程。

如果你对默认的桌面环境不满意，且熟悉 Linux 系统，可以在无桌面环境的系统中参照 [手动安装桌面环境](install-desktop.md) 安装你喜欢的桌面环境。目前只有 Debian 与 Ubuntu 支持这样的做法。

对于大多数同学来说，我们建议你选择默认的镜像（名称以 `vlab01` 开头，即编号为 01 的镜像），该镜像包含了计算机系本科学习实验所需要的必备软件（如 Xilinx Vivado），可以为你省去自己安装配置这些软件的负担。

如果你对 Linux 有一定经验，能够使用纯命令行的环境，那么你可以选择 11-19 号镜像，这些镜像不包含桌面环境（因此也无法使用 VNC 登录），可以将更多的资源用于你的实验工作。

### 镜像一览 {#image-content}

| 镜像编号 | 系统版本 | 默认用户 | 桌面环境 | 额外软件 |
| :------: | :------: | :------: | :------: | :------: |
| 01 | Ubuntu 20.04 | root/ubuntu | MATE | Vlab 实验软件套装 |
| 03 | Debian 10 | root/vlab | MATE | Vlab 实验软件套装 |
| 04 | Ubuntu 18.04 | root/ubuntu | Xfce4 | Vlab 实验软件套装 |
| 11 | Ubuntu 18.04 | root | 无 | 无 |
| 12 | Debian 10 | root | 无 | 无 |
| 13 | CentOS 8.1 | root | 无 | 无 |
| 14 | CentOS 7.7 | root | 无 | 无 |
| 99 | 测试版本，请勿使用 | root | 无 | 无 |

其中【Vlab 实验软件套装】包含了以下软件，并会随时增加或更新（不占用虚拟机存储空间）：

- Vivado 2019.1
- MATLAB R2019a
- Wolfram Mathematica 12.1
