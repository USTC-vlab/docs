# 桌面设置

!!! info "注意"

    本文章是关于桌面环境设置的，因此只适用于名称中带有 `desktop` 的虚拟机镜像。

## 修改分辨率

默认的桌面分辨率为 1366\*768，适合大多数人使用。如果你需要修改分辨率，可以使用系统内提供的 `vlab-vnc` 命令行工具。

打开终端，输入 `vlab-vnc` 即可查看支持的命令与分辨率选项。输入 `vlab-vnc set-res 1024x768` 即可将分辨率修改为 1024\*768。由于分辨率的修改需要重启 VNC 服务，可以使用 `vlab-vnc restart` 命令重启。**这会关闭已打开所有桌面程序**，请注意保存未完成的工作，以免丢失。

![Set VNC resolution from terminal](../images/vnc-change-resolution.png){: .img-center }

## 设置中文输入法 {#chinese-ime}

系统自带的输入法为 IBus，可以手动启用中文输入。在左上角找到 Applications → Settings → IBus Preferences 设置：

![Menu - IBus Preferences](../images/menu-ibus-settings.png){: .img-center }

在 Input Method 选项卡点 Add，然后在 Chinese 里找到 Pinyin，再次点击右下角的 Add 即可：

![IBus Preferences - Add Chinese Pinyin](../images/ibus-add-pinyin.png){: .img-center }

添加成功后可以在右上角切换中文与英文输入法，也可以按 <kbd>Shift</kbd> 键在中文输入法中切换中英文输入。
