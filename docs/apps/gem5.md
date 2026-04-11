---
icon: fontawesome/solid/gem
---

# gem5 模拟器

Vlab 为虚拟机提供了 [gem5][gem5] 模拟器，位于 `/opt/vlab/gem5`。

  [gem5]: https://www.gem5.org/

## 支持版本

### [v25.1.0.0](https://github.com/gem5/gem5/releases/tag/v25.1.0.0)

- 操作系统：Ubuntu 22.04、Ubuntu 24.04
- 版本：`build/X86/gem5.opt`

使用方式示例：

#### 简易配置

```shell
# 安装依赖
/opt/vlab/gem5/install.sh
# 使用 X86 gem5
gem5.opt your_script.py
```

#### 手工配置

=== "Ubuntu 24.04"

    ```shell title="安装依赖"
    sudo apt install libhdf5-103-1t64 libhdf5-cpp-103-1t64 libprotobuf32t64 libtcmalloc-minimal4t64
    ```

    ```shell title="使用 gem5"
    /opt/vlab/gem5/v25.1-ubuntu2404/X86/gem5.opt configs/learning_gem5/part1/simple.py
    ```

=== "Ubuntu 22.04"

    ```shell title="安装依赖"
    sudo apt install libhdf5-103 libhdf5-cpp-103 libprotobuf23 libtcmalloc-minimal4
    ```

    ```shell title="使用 gem5"
    /opt/vlab/gem5/v25.1-ubuntu2204/X86/gem5.opt configs/learning_gem5/part1/simple.py
    ```
