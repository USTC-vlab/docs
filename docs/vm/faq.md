# 常见问题

## 镜像选择 {#image-selection}

- **镜像是什么？**

    镜像是虚拟机的模板，包含了完整的虚拟机操作系统。不同的镜像包含的不同的操作系统配置（例如 Ubuntu, Debian 或者 CentOS），不同的操作系统在使用过程中也会有一些不同，请根据自己的实际需求选择。

- **不同的镜像有什么区别？**

    名称中带有 `desktop` 的镜像包含了桌面环境，可以使用我们提供的 VNC 登录方式；名称中不含 `desktop` 的镜像则无法使用 VNC 方式登录，我们会提供一个端口用于 SSH 命令行登录。具体登录方式请在左侧根据你的环境查看相应的文档。

    名称中的 `ubuntu`，`debian`, `centos` 等表示该镜像构建时基于的 [Linux 发行版](https://zh.wikipedia.org/zh-hans/Linux%E5%8F%91%E8%A1%8C%E7%89%88)。如果你对 Linux 不熟悉的话，可以参考校 Linux 用户协会的 [Linux 101 课程讲义](https://101.ustclug.org/)或网上的其他教程。

    也许有朝一日，我们会提供一种在不带桌面环境的系统中安装桌面环境并与我们的 VNC 登录方式密切结合的安装方法，供你安装自己喜欢的桌面环境。由于兼容性是一项挑战，我们目前暂未实现这个任务，因此有使用桌面环境需求的同学应当选择带有 `desktop` 的镜像。

- **我应该选择哪个镜像？**

    对于大多数同学来说，我们建议你选择默认的镜像（名称以 `vlab01` 开头，即编号为 01 的镜像），该镜像包含了计算机系本科学习实验所需要的必备软件（如 Xilinx Vivado），可以为你省去自己安装配置这些软件的负担。

    如果你只需要一个远程虚拟桌面，不需要计算机系课程实验的软件，可以选择 02 号镜像，该镜像包含了一个完整的 Ubuntu 桌面环境，适合其他同学学习 Linux 使用。

    如果你对 Linux 有一定经验，能够使用纯命令行的环境，那么你可以选择 11-13 号镜像，这些镜像不包含桌面环境（因此也无法使用 VNC 登录），可以将更多的资源用于你的实验工作。