# 在线 Visual Studio Code

Vlab 提供了可以直接在浏览器里使用的 Visual Studio Code。

## 启用 VSCode 服务 {#enable-server}

在使用前需要在你的虚拟机里激活 VSCode 的服务端程序。

打开终端，输入 `vscode start` 即可，同时这会将 VSCode 服务设为开机自动启动，使得你下次可以直接使用 VSCode 而无需重新操作命令行。

!!! question "找不到命令 vscode"

    若提示找不到 `vscode` 命令，请尝试使用完整路径 `/opt/vlab/bin/vscode`。
    
    若完整路径也不存在，请联系我们以获得支持。

若你想要停止 VSCode 服务，请使用 `vscode stop`，同时这会取消 VSCode 服务的开机自动启动。

其他命令：

- `vscode restart` 可以重启 VSCode 服务，但不会改变它的开机自启状态
- `vscode disable` 将完全删除 VSCode 服务。你在使用过程中产生的数据将会保留。

## 使用 VSCode {#usage}

在启用 VSCode 服务后，在虚拟机管理页面点击对应虚拟机的 **VSCode** 按钮即可跳转进入使用，如图所示：

![Use VSCode for this VM](../../images/apps-vscode-entry.png)
