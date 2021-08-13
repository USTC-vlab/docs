# 桌面设置

!!! info "注意"

    本文章是关于桌面环境设置的，因此只适用于名称中带有 `desktop` 的虚拟机镜像。

## 修改分辨率 {#change-resolution}

!!! tip "提示"

    更高的分辨率需要更快的网速，若网速不够，VNC 会自动降低显示质量（分辨率不变，颜色深度降低），可能会影响显示效果。建议根据自己的使用环境选择合适的分辨率。

    默认的桌面分辨率为 1024\*768，适合大多数人使用。

如果你需要修改分辨率，可以在左上角找到 **设置 → 显示**，如图：

![Set VNC resolution](images/vnc-change-resolution.png)

??? info "2020 年 2 月 22 日以前的虚拟机"

    2020 年 2 月 22 日及以前创建的虚拟机（ID 小于等于 1080），修改 VNC 分辨率可以使用系统内提供的 `vlab-vnc` 命令行工具。

    打开终端，输入 `vlab-vnc` 即可查看支持的命令与分辨率选项。输入 `vlab-vnc set-res 1024x768` 即可将分辨率修改为 1024\*768。由于分辨率的修改需要重启 VNC 服务，可以使用 `vlab-vnc restart` 命令重启。**这会关闭已打开所有桌面程序**，请注意保存未完成的工作，以免丢失。

    ![Set VNC resolution from terminal](images/vnc-change-resolution-old.png)

## 设置中文输入法 {#chinese-ime}

???+ success "新虚拟机已默认启用中文输入法"

    以下内容只有 2020 年 2 月 22 日及以前创建的虚拟机（ID 小于等于 1080）需要设置。2 月 23 日以后创建的新虚拟机（ID 大于等于 1095）已默认启用中文输入法。

系统自带的输入法为 IBus，可以手动启用中文输入。在左上角找到 Applications → Settings → IBus Preferences 设置：

![Menu - IBus Preferences](images/menu-ibus-settings.png)

在 Input Method 选项卡点 Add，然后在 Chinese 里找到 Pinyin，再次点击右下角的 Add 即可：

![IBus Preferences - Add Chinese Pinyin](images/ibus-add-pinyin.png)

添加成功后可以在右上角切换中文与英文输入法，也可以按 <kbd>Shift</kbd> 键在中文输入法中切换中英文输入。

## 修改系统语言 {#change-language}

未完待续
