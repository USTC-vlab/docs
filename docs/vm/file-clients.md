# 使用客户端软件进行文件传输

Vlab 支持使用 SFTP 客户端软件进行虚拟机与本机之间的文件传输。下面介绍 FileZilla 等常见软件的使用方式。

## FileZilla {#filezilla}

如果没有安装 FileZilla，先去 FileZilla 的[官方网站](https://filezilla-project.org/download.php?show_all=1)下载。

根据你使用的系统来选择对应的下载版本，下载好后安装一路点击 \[下一步\] 即可。

安装完成后找到并打开 FileZilla，可以看到如下界面：

![FileZilla-interface](./../images/FileZilla-interface.png)

### 交互式登录

首先新建一个 SFTP 配置，先进入站点管理器：

![FileZilla-setup](../images/FileZilla-setup.png)

在站点管理器中点击 \[New site\] 新建一个站点，你可以为这个配置取一个容易辨别的名字，例如 `vlab`。然后是右边常规选项卡中的配置了：

协议选择 SFTP，主机、端口如下图，登录类型选择交互式，用户可以填 root，也可以使用 ubuntu 或 vlab，详情参见[镜像配置](https://vlab.ustc.edu.cn/docs/vm/images/#image-content)

点击 \[连接\] 按钮的话，将会立即链接该SFTP站点；点击 \[确定\] 按钮的话，则保存并关闭 \[站点管理器\] 窗口。

![FileZilla-configs](../images/FileZilla-configs.png)

点击 \[连接\] 按钮后，会出现如下界面：

![FileZilla-inputpasswd](../images/FileZilla-inputpasswd.png)

按照提示依次输入 `Vlab Username` `Vlab password` `UNIX password` 即可登录（注意：输入一项要点击一次确定）

然后可看到如下界面：

![FileZilla-login-sucess](../images/FileZilla-login-sucess.png)

### 公钥认证登录

除了使用交互式登录，你还可以将下载到的私钥配置到 FileZilla 实现公钥免密登录。如果不了解在哪下载私钥请看[生成 SSH 密钥对并下载到本地](https://vlab.ustc.edu.cn/docs/vm/login-windows/#pubkey-retrieve)

首先打开设置：

![FileZilla-pubkey-config1](../images/FileZilla-pubkey-config1.png)

然后找到 SFTP 并添加密钥文件：

![FileZilla-pubkey-config2](../images/FileZilla-pubkey-config2.png)

点击 \[确定\] 后，再找到原来保存的站点连接即可免密登录。

### 上传本地文件到虚拟机

首先在 `本地站点（就是本地电脑）` 中找到并选择你要上传到虚拟机的 文件/文件夹。

然后在 `远程站点（就是虚拟机）` 中找到并进入你要上传 文件/文件夹 到的目录。

在要上传的 文件/文件夹 上右键，选择上传选项即可，或者也可以直接把 文件/文件夹 拖拽到右边远程站点目录：

![FileZilla-file-upload](../images/FileZilla-file-upload.png)

### 下载虚拟机文件到本地

下载虚拟机文件到本地和上传本地到虚拟机类似，在右边远程站点选中 文件/文件夹 右键点击 \[下载\] 即可，你也可以直接拖拽到左边本地站点目录下。

## WinSCP {#winscp}

TBD
