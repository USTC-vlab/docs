# 常见问题

## 连接问题 {#connection}

**虚拟机无法连接**

:   请检查以下项目：

    - 虚拟机是否已开机？（新创建的虚拟机初始状态为关机状态）
    - 虚拟机创建时是否选择了带有桌面环境的镜像？（01~09 号镜像都带有桌面环境）

    下面的问题只会在使用 VNC 客户端登录时遇到：

    - 你所在的网络可能屏蔽了 5900 端口（VNC 协议的标准端口），请尝试使用 449 端口，即在服务器地址处填入 `vlab.ustc.edu.cn:449`。如果很不幸两个端口都被屏蔽了，请使用浏览器登录。

**虚拟机连接时提示密码错误**

:   远程桌面连接方式使用 [Vlab 平台的登录密码](web.md#change-password)，而不是虚拟机内的密码。

**使用网络信息中心的 Web VPN 访问桌面登录页面 noVNC 时显示 noVNC encoutnered an error**

:   ```yaml
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

由于虚拟化平台限制，Vlab 虚拟机无法使用 [Snapcraft 软件包](https://snapcraft.io/)和 KVM 虚拟化。

由于技术更迭，较早的虚拟机（编号在大约 1800 以前）默认无法使用 Docker 容器，如果有需要，请联系我们开通。

## 虚拟机镜像选择 {#image-selection}

请参考 [虚拟机镜像](advanced/images.md) 一页。

## 故障排除 {#troubleshooting}

如果你的虚拟机出现问题，你可以[通过 SSH 命令行登录虚拟机](login/ssh.md)尝试进行错误排除。

### 恢复模式 SSH {#recovery-sshd}

如果很不幸，你的虚拟机网络出现的故障导致 SSH 和 VNC 都无法连接，你仍然可以通过 SSH 使用以下登录方式尝试修复：

- `ssh recovery@vlab.ustc.edu.cn` 可以提供虚拟机内的一个 root shell；
- `ssh console@vlab.ustc.edu.cn` 可以连接至虚拟机的 tty0，此处可以看到虚拟机在开关机过程中的各种日志输出。

该功能由 SSH 统一登录接口提供，因此使用相同的认证方式，即已配置的虚拟机公钥（推荐）或 Vlab 平台用户名和密码。
