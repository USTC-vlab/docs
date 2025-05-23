---
icon: material/cart-plus
---

# 虚拟机资源

目前创建的虚拟机配置统一为 2 核心 CPU、4 GB 内存与 16 GB 存储空间，该配置足够进行大部分计算机学院课程学习活动（如使用 Vivado 等）。对于 LXC 虚拟机，[Vlab 实验软件](images.md#vlab-software)不占用虚拟机的存储空间。

虚拟机直接接入 Vlab 内网，通过 NAT 访问科大校园网及互联网（教育网出口），因此虚拟机内无需（也禁止）使用网络通，虚拟机也无法直接从 Vlab 外部访问。
如果有实验需要访问运行在虚拟机中的端口的话，我们推荐你首先尝试 [SSH 端口转发][ssh-port-forwarding]。
它比端口映射更加安全，并且绝大多数时候能够满足你的需求。

  [ssh-port-forwarding]: https://201.ustclug.org/dev/ssh/#port-forwarding

## 申请额外资源 {#extra-resources}

如果你对系统资源有额外的需求，如

- 需要额外的计算或存储资源（CPU、内存、存储等）
- （对于 LXC 虚拟机）需要开启额外的功能
- 需要开放网络端口用于从外部访问虚拟机内的服务

请联系 Vlab 管理员，在条件允许的情况下，我们会尽力满足合理的需求。

!!! warning "注意"

    大多数的修改配置操作都需要先将虚拟机关机，因此请注意保存好未完成的工作。

!!! info "CPU 和内存"

    虚拟机的 CPU 和内存增减较为容易，且是随使用量动态分配的（指定的容量为动态上限），因此对于这两种资源申请我们会较为宽松地考虑。对于容量特别大的资源请求，我们可能会要求你告知使用方式和使用时间，并在使用时间结束后回收这些资源，确保 Vlab 能够为每位同学提供尽可能好的服务质量。

!!! info "硬盘容量"

    由于存储不是动态分配的（而是全额预留的容量），且调整较为复杂，因此如果你需要超过 64 GB 的总容量，我们建议你先看看[科大超算中心 GitLab](https://git.ustc.edu.cn/) 和[睿客网](https://rec.ustc.edu.cn/)是否能够满足你的存储需求，再考虑向我们申请额外的存储。

!!! info "端口映射"

    若因实验需要将虚拟机内的网络端口开放到公网访问，且无法使用 [SSH 端口转发][ssh-port-forwarding]等更加安全的方式时，我们可以在网关上配置 NAT 端口映射，此时虚拟机内能直接得到外部访问的 IP 和端口。

    由于合规性要求，我们会严格处理端口映射的申请，并且不会映射低端口（0-1023）和一些敏感端口（如 6379、8080 等）。

## 虚拟机互联 {#vm-interconnect}

Vlab 的所有虚拟机位于同一个二层网络中，如果有组队合作的需求，多个虚拟机之间可以直接通过内网地址互联（即 172.31 开头的 IP 地址，或者 2001:da8:d800:4bfc 开头的 IPv6 地址）。出于安全原因，TCP 22、1024-1029、5900 端口不能用于互联（UDP 端口暂无限制）。
