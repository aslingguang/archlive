# MyVim
## 介绍
基于LazyVim进行定制化，文档树使用nvim-tree，文件查询使用fzf，模糊查询使用rg,透明主题配色，添加ranger文件管理器，添加ai代码辅助工具codeium,等等
![image](https://github.com/aslingguang/MyVim/assets/74995823/0e85354b-ba80-4c58-84ab-de432ae65edb)
![image](https://github.com/aslingguang/MyVim/assets/74995823/92e05562-d9bd-445b-8aa1-649ccab0bb12)
![image](https://github.com/aslingguang/MyVim/assets/74995823/b092542e-cd51-43f9-ab6c-fae31718251c)
![image](https://github.com/aslingguang/MyVim/assets/74995823/692056c0-9517-40c9-a4aa-9580dc9c5d09)
![image](https://github.com/aslingguang/MyVim/assets/74995823/2fbcab50-1080-4e05-aaca-95354a414fca)

## 安装
### 1.如果安装了lazyvim，可直接修改`config/lazy.lua`
![image](https://github.com/aslingguang/MyVim/assets/74995823/e56992ff-83c7-4d1a-8fd6-dcc66ad7db17)

只需修改如下内容
```lua
require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    -- { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { "aslingguang/MyVim", import = "myvim.plugins" },
    { import = "myvim.my" },
    -- import any extras modules here
    -- { import = "myvim.plugins.extras.lang.typescript" },
    -- { import = "myvim.plugins.extras.lang.json" },
    -- { import = "myvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    -- { import = "plugins.disable" },
  },
})
```
将`{ "LazyVim/LazyVim", import = "lazyvim.plugins" },`修改为` { "aslingguang/MyVim", import = "myvim.plugins" },\n{ import = "myvim.my" },`

### 2.若没有，则可安装lazyvim的官方lazyvim-starter或我配好的mylazyvim-starter
可选择先备份数据
```bash
# required
mv ~/.config/nvim ~/.config/nvim.bak

# optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```
安装starter
```bash
git clone https://github.com/aslingguang/MyVim-starter ~/.config/nvim/
```
删除.git 目录(可选，自己不上传代码可以不删)
```bash
rm -rf ~/.config/nvim/.git
```

启动
```bash
nvim
```
## 参考
[LazyVim官方文档](https://www.lazyvim.org/)

[LazyVim-Starter源码](https://github.com/LazyVim/starter)

[LazyVim源码](https://github.com/LazyVim/LazyVim)

[Lazy.nvim源码](https://github.com/folke/lazy.nvim)




