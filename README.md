# archlive 构建说明

archlive仅为定制版live cd，进行中文本地化，添加archlinuxcn源，内置中文输入法，对主题进行定制化，主要采用WihteSur主题，内置ALCI图形化安装程序，可进行本地图形化安装，也可使用archinstall进行在线安装。

构建方法(如果需要安装本地软件，记得把本地源改成自己的，并添加所需要的软件包到本地源中)
```zsh
git https://github.com/aslingguang/archlive.git
sudo mkarchiso  -v -w ~/archbulid -o ~/archout archlive
```
生成镜像在 `~/archout`中

## 效果展示
![image](https://github.com/aslingguang/archlive/assets/154639966/a97102c0-8c0d-4a20-b0ac-c6c2cd0d70e6)
![image](https://github.com/aslingguang/archlive/assets/154639966/932a407d-4a8a-4444-8b27-c0bad4712228)
![image](https://github.com/aslingguang/archlive/assets/154639966/9f03e691-0db4-49c5-8be8-d92a5ff37cca)
![image](https://github.com/aslingguang/archlive/assets/154639966/080263cd-3a8c-4a4f-8050-a62b7c9f380f)


## 安装的软件

这些软件是默认选择安装的软件

### 来自alci源的软件

ALCI图形化安装程序，可进行本地图形化安装

```zsh
alci-calamares-dev
alci-calamares-config-dev
```

### 来自archlinuxcn源的软件

```zsh
archlinuxcn-keyring
yay
ventoy-bin
nekoray
```

### 来自官方源的软件

```zsh
linux-headers

xorg-server
plasma-desktop
plasma-pa
dolphin
dolphin-plugins

sddm

networkmanager
network-manager-applet

base-devel
os-prober
dex
libxinerama
make
mkinitcpio-openswap
fastfetch
bat
fd
jq
eza
ripgrep
fzf
git
noto-fonts-cjk
ark
zip
unzip
okular
yakuake
wget
axel
vlc
chromium
gvfs-smb
neovim
yazi
ksysguard

fcitx
fcitx-im
fcitx-configtool

iw
net-tools
inetutils
iproute2

```

### 来自本地源的软件

```zsh
git-delta
debtap
sublime-text-4
pacseek
microsoft-edge-stable-bin
visual-studio-code-bin
plasma5-themes-whitesur-git
whitesur-gtk-theme-git
whitesur-icon-theme-git
```

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


