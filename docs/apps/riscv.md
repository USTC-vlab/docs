---
icon: material/toolbox
---

# RISC-V 工具链

Vlab 为虚拟机提供了 RISC-V 的 GCC 工具链和 [RARS 模拟器][rars]。

  [rars]: https://github.com/TheThirdOne/rars

## 使用 GCC 工具链

32 位 GCC 工具链位于 `/opt/vlab/riscv`，可以通过命令行直接使用，例如：

```shell
/opt/vlab/riscv/bin/riscv32-unknown-elf-gcc main.c -o main
```

64 位 GCC 工具链位于 `/opt/vlab/riscv64`，可以通过命令行直接使用，例如：

```shell
/opt/vlab/riscv64/bin/riscv64-unknown-linux-gcc main.c -o main
```

!!! question "找不到 /opt/vlab"

    若你的虚拟机里没有 `/opt/vlab`，请联系我们以获得支持。

64 位 GCC 工具链本身的编译方式及配置参数可以在我们的[编译脚本](https://github.com/USTC-vlab/vlab-software/blob/master/riscv/build.sh)中查看。

## 使用 RARS

RARS 可以从桌面左上角的应用程序菜单中打开。

![Applications Menu](../images/apps-menu-rars.png)

## 使用 Verilator

Verilator 位于 `/opt/vlab`，该路径默认位于 PATH 中，可以通过命令行直接使用。
