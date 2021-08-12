# 常见问题

## 连接问题 {#connection}

- **虚拟机无法连接**

    请检查以下项目：

    - 虚拟机是否已开机？（新创建的虚拟机初始状态为关机状态）
    - 虚拟机创建时是否选择了带有桌面环境的镜像？（01~09 号镜像都带有桌面环境）

    下面的问题只会在使用 VNC 客户端登录时遇到：

    - 你所在的网络可能屏蔽了 5900 端口（VNC 协议的标准端口），请尝试使用 449 端口，即在服务器地址处填入 `vlab.ustc.edu.cn:449`。如果很不幸两个端口都被屏蔽了，请使用浏览器登录。

- **虚拟机连接时提示密码错误**

    远程桌面连接方式使用 [Vlab 平台的登录密码](web.md#change-password)，而不是虚拟机内的 root 密码。

- **使用网络信息中心的 Web VPN 访问桌面登录页面 noVNC 时显示 noVNC encoutnered an error**

    ```yaml
    SyntaxError: import declarations may only appear at top level of a module
    ```

    请直接访问 [vlab.ustc.edu.cn](https://vlab.ustc.edu.cn/)，网页版桌面登录不兼容 Web VPN。

## 软件问题 {#software}

### Vivado 仿真报错 {#s-vivado-xsim-error}

表现症状

:   尝试使用 Vivado 仿真时很快出现以下错误信息：

    ```text
    ERROR: [XSIM 43-3409] Failed to compile generated C file xsim.dir/test_behav/obj/xsim_1.c.
    ```

解决方法

:   打开终端，按顺序输入如下两条命令

    ```shell
    sudo apt update
    sudo apt install build-essential libncurses5
    ```

!!! info "新虚拟机不会出现此问题"

    在收到反馈后，我们已更新 01 号镜像。若你的虚拟机编号大于 2267，那么你不需要进行处理。

## 软件限制 {#limits}

由于虚拟化平台限制，Vlab 提供的虚拟机默认无法使用容器（Docker, Kubernetes 等）和 [Snapcraft 软件包](https://snapcraft.io/)。

如有需要使用 Docker 或 K8s，请联系管理员手动开启（开启后重启生效），但 Snapcraft 软件包暂时超出了我们的能力范围。

## 镜像选择 {#image-selection}

这一部分内容已移至 [虚拟机镜像](images.md) 一页。

## 虚拟机安全 {#vm-security}

由于虚拟机的 SSH 端口是暴露在公网上的，因此如果你的 root 密码设置太弱，会有安全隐患。**任何以 root 登录虚拟机的人都拥有虚拟机的全部权限。**

我们建议，如果你不需要使用密码以 root 用户登录虚拟机，请关闭 root 用户的远程密码登录，你仍然可以使用 SSH 公钥登录你的虚拟机，并且这不影响你使用 `su` 命令和 `sudo` 命令。

关闭 root 密码登录的方式很简单，以 root 用户（或使用 `sudo`）打开文件 `/etc/ssh/sshd_config`，找到 `PermitRootLogin yes` 一行，修改为 `PermitRootLogin prohibit-password` 保存退出，然后执行 `systemctl reload ssh` 命令即可。

你也可以直接使用下面两条命令来完成这一步骤：

```shell
sudo sed -Ei '/^#?PermitRootLogin/c\PermitRootLogin prohibit-password' /etc/ssh/sshd_config
sudo systemctl reload ssh
```

!!! warning "注意"

    请不要直接禁止 root 用户的登录（不要将 `PermitRootLogin` 设置为 no），否则修改密码和文件传输等功能将无法使用。
