---
icon: octicons/terminal-16
---

# 通过 SSH 命令行登录虚拟机

!!! example "支持的虚拟机和客户端"

    SSH 登录方式支持 Linux LXC 虚拟机和 Linux KVM 虚拟机。

    SSH 登录方式支持包括 Windows, macOS, Linux, iOS 和 Android 在内的客户端系统。

!!! success "推荐使用公钥方式登录"

    详情请见下方[公钥登录](#pubkey)的段落。

## 登录用户名 {#username}

对于使用默认 vlab01 镜像的用户，请使用 `ubuntu` 用户登录。手动选择其他镜像的用户请参考[虚拟机镜像](../advanced/images.md#image-content)。使用 `root` 用户进行日常操作不是一个好习惯，因此在可行的情况下，建议不使用 `root` 用户登录。

!!! example "例子"

    ```console
    # 正确（使用默认镜像的情况）
    $ ssh ubuntu@vlab.ustc.edu.cn

    # 正确（使用其他部分镜像的情况）
    $ ssh vlab@vlab.ustc.edu.cn

    # 正确但不推荐
    $ ssh root@vlab.ustc.edu.cn

    # 错误（你的学号不是 SSH 的登录用户名）
    $ ssh SA21012345@vlab.ustc.edu.cn
    ```

### 恢复模式 {#recovery}

如果你的虚拟机出现故障导致 SSH 和 VNC 都无法正常连接，你仍然可以通过 SSH 使用以下登录方式尝试修复：

??? info "对于 Linux LXC 虚拟机"

    `ssh recovery@vlab.ustc.edu.cn` 可以提供虚拟机内的一个 root shell；

    `ssh console@vlab.ustc.edu.cn` 可以连接至虚拟机的 tty0，此处可以看到虚拟机在开关机过程中的各种日志输出。

??? info "对于 Linux KVM 虚拟机"

    `ssh serial@vlab.ustc.edu.cn` 可以提供到虚拟机的串口（COM1）的连接。

该功能由 SSH 统一登录接口提供，因此使用相同的认证方式，即已配置的虚拟机公钥（推荐）或 Vlab 平台用户名和密码。

## 从浏览器登录 {#web}

2022 年 4 月，我们添加了网页登录 SSH 的功能，在虚拟机管理页面直接点击「网页 SSH 登录」即可。

!!! question "用户名密码是什么？"

    `Vlab username` 是你的学号（或工号），在登录虚拟机管理页面后可以在右上角看到。

    `Vlab password` 是 Vlab 平台的登录密码。[还没设置？](../web.md#change-password)

### 登录用户 {#web-username}

默认以 root 用户登录。URL 中可以配置以其他用户登录：在 URL 中添加 `unixusername` 参数即可，例如虚拟机 1234 默认的 URL 为：

```text
https://vlab.ustc.edu.cn/ssh/?username=:1234
```

如果需要以 `ubuntu` 用户登录，添加 `unixusername` 参数如下：

```text
https://vlab.ustc.edu.cn/ssh/?username=:1234&unixusername=ubuntu
```

此外，你也可以填入恢复模式使用的用户名 `recovery`、`console` 和 `serial`，因此可以通过网页版 SSH 进入救援模式：

```text
https://vlab.ustc.edu.cn/ssh/?username=:1234&unixusername=recovery
```

### 上传文件与下载文件 {#web-files}

SSH 网页版支持文件拖动上传与文件下载。首先需要在虚拟机内安装 `lrzsz` 软件包：

```shell
sudo apt install lrzsz
```

安装后从本地拖动文件到浏览器窗口中即可上传。如需下载文件，使用 `sz` 命令。例如下载 `yrcamp.jpg` 文件：

```shell
sz yrcamp.jpg
```

输入命令后，浏览器窗口中会出现一个对话框显示文件名与文件大小，点击 Download 即可。

!!! warning "避免使用此功能上传/下载大文件"

    较大的文件请考虑使用网页版文件传输功能，或配置命令行 ssh 登录后，使用 `scp` 或 `rsync` 命令处理。

## 从命令行登录 {#cli}

=== ":fontawesome-brands-apple: macOS 和 :fontawesome-brands-linux: Linux"

    macOS 自带命令行 SSH 客户端，同时绝大多数的 Linux 发行版也自带了 SSH 客户端。若你的 Linux 系统中没有 SSH 客户端（`ssh` 命令），请自行搜索资料安装，软件包的名称通常为 `ssh`、`openssh` 或 `openssh-client` 之一。

    取决于你所选择的[虚拟机镜像](../advanced/images.md)，SSH 的登录用户名可能为 root、ubuntu 或 vlab，或者你自己创建的用户名。打开操作系统提供的终端应用，输入命令（以 ubuntu 用户为例）：

    ```shell
    ssh ubuntu@vlab.ustc.edu.cn
    ```

    如果遇到 Warning，请输入 `yes`，然后根据提示输入 Vlab 平台的用户名和密码，即可登录虚拟机。出于安全考虑，输入密码的时候没有回显。

    ![SSH console login](../images/ssh_1.png)

=== ":fontawesome-brands-windows: Windows"

    Windows 10 可以在系统设置中启用 OpenSSH 客户端，请参考[微软的说明文档](https://docs.microsoft.com/zh-cn/windows-server/administration/openssh/openssh_install_firstuse)安装。

    同时 Windows 平台也有各种 Linux / Unix 环境模拟软件，例如

    - [Git Bash](https://gitforwindows.org/) ([MSYS2](https://www.msys2.org/))
    - [Cygwin](https://www.cygwin.com/)
    - [Windows Subsystem for Linux](https://docs.microsoft.com/zh-cn/windows/wsl/install-win10)

    你可以安装上述软件中的任何一种，然后参考“macOS 和 Linux”的使用说明。我们推荐使用 Git Bash 或者 WSL。

=== ":fontawesome-brands-android: Android"

    Android 系统可以从 [Google Play](https://play.google.com/store/apps/details?id=com.termux) 或者 [F-Droid](https://f-droid.org/en/packages/com.termux/) 获取 Termux 应用程序，然后使用 `pkg install ssh` 命令安装 SSH 客户端，然后参考“macOS 和 Linux”的使用说明。

!!! question "拥有多个虚拟机？"

    如果你拥有多个虚拟机，我们建议[使用公钥登录](#pubkey)。

    除了公钥登录之外，你也可以在提示 Vlab username 时输入 `学号:虚拟机编号` 的形式，例如 `PB17000000:1234`。

!!! question "用户名密码是什么？"

    `Vlab username` 是你的学号（或工号），在登录虚拟机管理页面后可以在右上角看到。

    `Vlab password` 是 Vlab 平台的登录密码。[还没设置？](../web.md#change-password)

### 使用公钥登录虚拟机（:fontawesome-solid-star:推荐） {#pubkey}

使用公钥登录虚拟机可以免除每次输入密码的麻烦。

#### 生成 SSH 密钥对并下载到本地 {#get-pubkey}

进入虚拟机管理界面，可以在自己虚拟机下方找到 SSH 密钥管理入口：

![Vlab pubkey entry](../images/web-pubkey-entrypoint.png)

点击进入，即可通过点击 \[生成新的 SSH 密钥对\] 生成 SSH 密钥对：

![Vlab pubkey generate](../images/web-pubkey-generate.png)

此时公钥已经存储到 Vlab 平台上，只需要下载私钥并做一些配置就能利用密钥对进行免密登录。

点击 \[下载私钥\] 就能在下载文件中找到一个以 `.pem` 结尾的文件，这就是对应的 SSH 私钥。请妥善保管它，因为**任何获得这个文件的人都能够登录你的虚拟机**。

由于技术限制，每个虚拟机的私钥都是独立的。若你删除并重新创建了虚拟机，你需要重新生成密钥对才能使用密钥登录新的虚拟机。

#### 配置 SSH 命令登录 {#ssh-command}

=== ":fontawesome-brands-apple: macOS，:fontawesome-brands-linux: Linux 和 :octicons-terminal-16: Termux"

    根据约定俗成，一般将私钥放在 `~/.ssh` 目录中，例如 `~/.ssh/vlab.pem`：

    ```shell
    chmod 600 ~/.ssh/vlab.pem
    ssh -i ~/.ssh/vlab.pem ubuntu@vlab.ustc.edu.cn
    ```

=== ":fontawesome-brands-windows: Windows"

    根据约定俗成，一般将私钥放在 `%UserProfile%\.ssh` 目录中，例如 `%UserProfile%\.ssh\vlab.pem`

    在资源管理器中右键点击私钥文件，选择 **属性** → **安全**，确保只有你的账户有访问私钥文件的权限。详细步骤可以参考[这个链接](https://superuser.com/a/1296046/688600)。

    修改权限后，可以在 CMD 或 PowerShell 中使用 ssh 命令登录：

    ```bat
    ssh -i %UserProfile%\.ssh\vlab.pem ubuntu@vlab.ustc.edu.cn
    ```

!!! tip "使用公钥"

    与传统的 SSH 公钥不同，使用公钥登录 Vlab 平台时，用户名可以在 root、ubuntu 或 vlab 中任意选择。在较旧的虚拟机中，若你使用了其他用户名，则你还需要输入虚拟机内对应用户的密码。

### 使用 SSH 配置文件 {#ssh-config}

为了方便使用，你也可以将上述配置写入 SSH 配置文件中，例如：

```shell title="~/.ssh/config"
Host vlab
    HostName vlab.ustc.edu.cn
    User ubuntu
    IdentityFile ~/.ssh/vlab.pem
```

如果你经常使用 VSCode 的 Remote SSH 功能的话，我们强烈推荐写好 SSH 配置文件并采用公钥登录的方式，避免每次登录都需要输入学号和 Vlab 平台密码的麻烦。

## 使用 PuTTY 客户端登录 {#putty}

### 安装 PuTTY

=== ":fontawesome-brands-windows: Windows"

    首先[下载 PuTTY 客户端](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)，然后双击打开，安装过程很简单，直接 \[下一步\] 到底即可。安装完成后，找到并打开 PuTTY，如图：

    ![PuTTY in Windows 10 Start Menu](../images/putty-win10-tile.png)

    在 Host Name 一栏填入 `vlab.ustc.edu.cn`，端口号为 22（这是默认值），点击 **Open**，如图：

    ![PuTTY configuration](../images/putty-config.png)

    第一次连接时会提示你选择信任 Vlab 统一登录平台，点 Yes 即可：

    ![PuTTY host key prompt](../images/putty-host-key.png)

=== ":fontawesome-brands-linux: Linux"

    部分 Linux 发行版的软件源里提供了 PuTTY 软件，可以直接从软件源安装，例如：

    * Ubuntu 和 Debian：`sudo apt-get install putty`

    * CentOS, Fedora 和 RHEL：`sudo yum install putty`

    * Arch Linux 和 Manjaro：`sudo pacman -S putty`

    安装完成后请参考 Windows 的使用说明来使用和配置 PuTTY。

### 使用密码登录虚拟机 {#putty-password}

连接到统一登录平台后，PuTTY 会要求你输入用户名和密码。取决于你所选择的[虚拟机镜像](../advanced/images.md)，SSH 的登录用户名可能为 root、ubuntu 或 vlab，或者你自己创建的用户名。然后根据提示输入你的 Vlab 用户名和密码（输入的密码没有回显），按回车即可：

![PuTTY screen](../images/putty-login.png)

登录成功后即可使用虚拟机，如图：

![PuTTY shell](../images/putty-login-success.png)

PuTTY 还有一些高级的使用方法，例如你可以保存这些连接信息，以后可以更方便地连接虚拟机。这里有两篇不错的使用教程：

- <https://www.hostarr.com/putty-tutorial/>
- <https://www.cnblogs.com/yuwentao/archive/2013/01/06/2846953.html>

### 使用公钥登录虚拟机 {#putty-pubkey}

#### 将 .pem 格式的私钥转换为 .ppk 格式 {#pubkey-convert}

由于 PuTTY 使用的私钥格式为其专用的 `.ppk` 格式，而不是更为通用的 PEM 格式，所以我们还要进行一步转换。转换私钥格式需要用到 PuTTYgen，即 PuTTY 的密钥生成与转换工具。一般在安装 PuTTY 时已包含它，如果你安装的 PuTTY 中未包含这个工具，请在[这个页面](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)直接下载 `puttygen.exe`。

首先参考[使用公钥登录虚拟机](#pubkey)一节下载 PEM 格式的公钥文件。在开始菜单的 PuTTY 文件夹下，或者 PuTTY 的安装目录下就能找到 PuTTYgen，打开后可以看到如下界面：

![PuTTY pubkey format convert](../images/putty-pubkey-format-convert.png)

点击 **Load** 找到刚刚下载的 `.pem` 文件打开，然后点击 **Save private key**，选择一个合适目录保存生成的 `.ppk` 文件。同样地，请妥善保管这个私钥文件。

#### 在 PuTTY 中设置私钥并保存会话信息 {#pubkey-save-session}

先到 Connection - Data 项设置自己的登录用户名（这里以 root 为例，你也可以使用 ubuntu 或 vlab，详情参见[镜像配置](../advanced/images.md#image-content)），如图：

![PuTTY pubkey config 1](../images/putty-pubkey-config1.png)

再点 SSH 项下面的 Auth，添加上一步转换得到的 `.ppk` 格式的私钥：

![PuTTY pubkey config 2](../images/putty-pubkey-config2.png)

然后最重要的是回到最上面的 Session 项里保存，不然下次又得重新添加一遍。你可以为这个配置取一个容易辨别的名字，例如 `vlab`。

![PuTTY pubkey save session](../images/putty-pubkey-savesession.png)

保存后每次登录时只需要双击之前保存的连接信息，就能免密登录你的虚拟机。

## 使用其他客户端登录 {#others}

市面上还有诸如 XShell 和 Termius 等其他客户端，作为 SSH 客户端，它们的功能和使用方法大都相似，这里不再一一给出使用说明。

对于 Windows 操作系统，可以在这里下载 [XShell](https://www.netsarang.com/zh/free-for-home-school/) 或 [Termius](https://termius.com/windows)。请参考各软件的使用说明来配置登录。其中 Termius 还有 macOS、Linux、iOS 和 Android 等多个系统的版本，具体请在 [Termius 官网](https://termius.com/)上查看。
