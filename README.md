# archlive 构建说明

archlive仅为定制版live cd，进行中文本地化，添加archlinuxcn源，内置中文输入法，对主题进行定制化，主要采用WihteSur主题，内置ALCI图形化安装程序，可进行本地图形化安装，也可使用archinstall进行在线安装。

构建方法(如果需要安装本地软件，记得把本地源改成自己的，并添加所需要的软件包到本地源中)

```zsh
git https://github.com/aslingguang/archlive.git
git checkout xfce4 # 不同的桌面切换到不同的分支
sudo mkarchiso  -v -w ~/archbulid -o ~/archout archlive
```

生成镜像在 `~/archout`中,大小约2.7G

[sourceforge下载](https://sourceforge.net/projects/guang-archlive/files/)

[123云盘下载](https://www.123pan.com/s/nrpDVv-B6Zav.html)

## 效果展示

|                                            |                                            |
|--------------------------------------------|--------------------------------------------|
|![image](https://github.com/aslingguang/archlive/assets/154639966/a97102c0-8c0d-4a20-b0ac-c6c2cd0d70e6)|![image](https://github.com/aslingguang/archlive/assets/154639966/932a407d-4a8a-4444-8b27-c0bad4712228)|
|![image](https://github.com/aslingguang/archlive/assets/154639966/2c6684be-048c-43e4-b94b-406f601d76ca)|![image](https://github.com/aslingguang/archlive/assets/154639966/080263cd-3a8c-4a4f-8050-a62b7c9f380f)|

## 安装的软件

这些软件是默认选择安装的软件

### 来自alci源的软件

ALCI图形化安装程序，可进行本地图形化安装

- alci-calamares-dev: 一个用于Arch Linux 系统安装的安装器框架
- alci-calamares-config-dev: ALCI安装器的 Calamares 配置开发包

### 来自archlinuxcn源的软件

- archlinuxcn-keyring:  Arch Linux CN 软件源的 GPG 密钥环，用于验证从 Arch Linux CN 软件源安装的软件包的真实性。
- yay: 一个在 Arch Linux 上的 AUR（Arch User Repository）助手，它简化了从 AUR 安装软件包的过程。
- paru: 类似yay的 AUR（Arch User Repository）助手。
- ventoy-bin: 一个用于创建可启动 USB 设备的工具，它可以让用户一次性将多个 ISO 文件写入 USB 设备并从中启动。
- nekoray: 代理工具，几乎支持全部常见协议。

### 来自官方源的软件

- xfce4: Xfce4 是一个轻量级的桌面环境，旨在提供优秀的性能和快速的用户体验。
- xfce4-goodies: 一系列的附加组件和插件，为Xfce4桌面环境提供了额外的功能和工具。
- linux-headers: 包含用于构建内核模块的头文件，通常与系统上安装的内核版本相对应。
- xorg-server: X.Org 服务器是 X Window System 的服务器端实现，提供了图形用户界面的基本功能。
- sddm: Simple Desktop Display Manager，一个轻量级的 X11 显示管理器，用于管理用户登录和会话启动。
- networkmanager: 用于在 Linux 上管理网络连接的守护进程和用户界面工具。
- network-manager-applet: NetworkManager 的 GNOME 系统托盘 applet，提供了一个可视化的方式来管理网络连接。
- base-devel: Arch Linux 中的软件包组，包含了构建和编译软件所需的基本开发工具。
- os-prober: 用于探测系统上其他操作系统安装的工具。
- dex: 自动启动应用程序的简单 X 环境启动器。
- libxinerama: 提供多显示器支持的 X Window 系统库。
- make: GNU make 工具，用于基于 Makefile 构建软件项目。
- mkinitcpio-openswap: 用于在 Arch Linux 下处理交换分区的 mkinitcpio 钩子。
- fastfetch: 一个轻量级的系统信息显示工具，类似于 neofetch。
- bat: 一个类似于 cat 命令的工具，但具有语法高亮和 Git 集成等额外功能。
- cloc: cloc（Count Lines of Code）是一个用于统计源代码行数的工具。它可以用于统计各种编程语言的源代码行数，包括注释行、空白行等。
- dust: dust是一个用于查看磁盘使用情况的工具，以直观的方式展示磁盘空间的占用情况。
- sd: sd是一个用于在文本中进行替换操作的工具，类似于sed，但具有更友好的语法和交互式的替换体验。
- fd: 一个简单而快速的查找工具，类似于 find 命令。
- jq: 用于处理和分析 JSON 数据的命令行工具。
- eza: 一个替代 ls 命令的现代化的文件列表工具。
- ripgrep: 一个快速的文本搜索工具，类似于 grep 命令。
- fzf: 命令行模糊查找工具，用于快速在大量数据中进行选择或搜索。
- git: 版本控制系统，用于跟踪文件的变化并协作开发。
- noto-fonts-cjk: Google Noto 字体的 CJK 版本，包含了对中文、日文和韩文的支持。
- ark: KDE 下的归档管理器，用于创建、查看和修改各种归档文件。
- zip: 用于创建和管理 ZIP 归档文件的命令行工具。
- unzip: 用于解压缩 ZIP 归档文件的命令行工具。
- okular: KDE 下的文档查看器，支持多种文档格式，如 PDF、ePub 等。
- yakuake: KDE 下的下拉式终端，可以快速地调出和隐藏终端窗口。
- wget: 用于从网络上下载文件的命令行工具。
- axel: 多线程下载工具，用于加速文件的下载过程。
- vlc: 跨平台的多媒体播放器，支持播放各种音频和视频格式。
- chromium: 开源网页浏览器，提供了快速的网页浏览和丰富的扩展支持。
- gvfs-smb: GNOME 虚拟文件系统的 Samba 插件，用于支持通过 SMB 协议访问网络共享文件夹。
- yazi: 一个用 Rust 编写的终端文件管理器，基于非阻塞异步 I/O。
- spectacle: spectacle 是一个用于截图的程序。
- libreoffice-fresh: LibreOffice 是一个功能强大的开源办公套件，包括文字处理、电子表格、演示文稿、绘图、数据库等功能，与 Microsoft Office 兼容性良好。libreoffice-fresh 版本提供了最新的特性和改进，适合希望使用最新功能的用户。
- libreoffice-fresh-zh-cn: libreoffice-fresh的中文包。

- fcitx: 一个灵活的输入法框架，提供了对多种输入法的支持。
- fcitx-im: Fcitx 输入法框架的基本输入法组件。
- fcitx-configtool: Fcitx 输入法框架的配置工具。
- iw: 用于配置无线网络接口的命令行工具。
- net-tools: 包含了一些传统的网络工具，如 ifconfig、netstat 等。
- inetutils: 包含了一些标准的网络工具，如 ping、telnet 等。
- iproute2: 用于配置网络接口、路由表等网络参数的工具集。
- tealdeer: man的替代品，tldr 的一个基于 Rust 的实现,一个用于提供快速上手指南的工具。
- tig: Tig 是一款命令行下 Git 的可视化工具，可以很方便地在命令行下以交互的方式完成 Git 的各种操作。
- github-cli: ithub命令行工具,用于与GitHub进行交互和管理。
- plocate: 它可以快速定位文件和目录，使用索引加速搜索过程，比传统的find和locate命令更快速。
- hyperfine: 替代time,强大的命令行基准测试工具。支持任意 shell 命令、多次运行的统计分析和结果导出。

### 来自本地源的软件

- xnviewmp: XnViewMP是一款功能丰富、易于使用的图像工具软件。
- git-delta: 一个 Git 命令行工具，用于美化和改进 git diff 输出的工具，它提供了语法高亮、行号、漂亮的图形和一些额外的功能来改善 Git diff 的显示。
- debtap: 一个用于将 Debian 软件包转换为 Arch Linux 软件包的实用工具，它可以帮助 Arch Linux 用户在 AUR 中找到适用于他们系统的软件包。
- sublime-text-4: 一款流行的跨平台文本编辑器，它具有丰富的插件生态和可定制性，适合开发人员和程序员使用。
- microsoft-edge-stable-bin: 微软推出的基于 Chromium 内核的网页浏览器，这是它的稳定版软件包。
- visual-studio-code-bin: 一款由 Microsoft 推出的流行的跨平台代码编辑器，它支持大量的编程语言和拥有丰富的插件生态。

## 构建本地仓库

创建仓库目录

```zsh
mkdir ~/repo
```

先通过aur助手构建想要的本地软件包(yay、paru、pacseek等)
如：

```zsh
yay -S debtap
cd ~/.cache/yay/debtap
cp debtap-3.5.1-1-any.pkg.tar.zst ~/repo
cd ~/repo
repo-add guang.db.tar.gz debtap-3.5.1-1-any.pkg.tar.zst
```

## 添加源

添加本地源到archlive/pacman.conf

```zsh
[guang]
SigLevel = Optional TrustAll
Server = file:///home/lingguang/repo
```

添加archlinuxcn源到archlive/pacman.conf

```zsh
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
```

## 参考

[ArchWiki-archiso](https://wiki.archlinux.org/title/Archiso)

[ArchWiki-Custom_local_repository](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Custom_local_repository)
