# Linux 系统登录虚拟机

## 新建虚拟机

1. 进入 Vlab 平台，新建虚拟机

   ![新建虚拟机页面](../images/ssh_1.png)

2. 输入虚拟机名称，选择镜像，设置 root 密码

   ![创建虚拟机页面](../images/ssh_2.png)

3. 点击开机即创建完成

   ![开机](../images/ssh_3.png)

## 使用 SSH 登录

### 安装 SSH 客户端

* Ubuntu 和 Debian：`sudo apt-get install ssh`
* CentOS, Fedora 和 RHEL：`sudo yum install ssh-clients`
* Arch Linux 和 Manjaro：`sudo pacman -S openssh`

### 登录

* 根据虚拟机登录 IP 地址和端口（例如，下图中地址为 `202.38.75.252`，端口为 `10003`），输入命令：

    ```shell
    ssh root@202.38.75.252 -p 10003
    ```

* 如果遇到 Warning，请输入 `yes`，然后输入之前设置的 root 密码，即可登录虚拟机

    ![](../images/ssh_4.png)
