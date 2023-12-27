
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },

		-- { "LazyVim/LazyVim",},
		{ import = "lazyvim.plugins.extras.coding.codeium" },
		{ import = "plugins.my"},

	},

	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	-- install = { colorscheme = { "tokyonight", "habamax" } },
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
	rtp = {
		-- disable some rtp plugins
		disabled_plugins = {
		"gzip",
		-- "matchit",
		-- "matchparen",
		-- "netrwPlugin",
		"tarPlugin",
		"tohtml",
		"tutor",
		"zipPlugin",
		},
	},
	},
})

-- 设置浮动窗口颜色
local normalFloat = vim.api.nvim_get_hl_by_name("NormalFloat", true)-- 获取 NormalFloat 高亮组的属性
normalFloat.background = nil  -- 修改背景色属性
vim.api.nvim_set_hl(0, "NormalFloat", normalFloat) -- 应用修改后的属性到 NormalFloat 高亮组

local function map(mode, lhs, rhs, opts)
    opts = opts or {}
    opts.silent = opts.silent ~=false
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- 退出不保存
map("i", "jk", "<ESC>:w<CR>", { desc = "退出编辑/Exit Editing" })
map("n", "jk", ":q<CR>", { desc = "退出/Exit" })
map("v", "jk", ":q<CR>", { desc = "退出/Exit" })
map("t", "jk", "<C-\\><C-n>:q<CR>", { desc = "退出终端/Exit Terminal" })
-- map("n", "jk", ":q<CR>", { desc = "退出终端/Exit Terminal" })


-- map("i", "<C-a>", "<C-o>gg<C-o>VG<cr>" ,{ desc = "全选/Select all" })
map({ "i", "v" }, "<C-a>", "<esc>ggVG", { desc = "全选/Select all" })
map("n", "<C-a>", "ggVG", { desc = "全选/Select all" })

map({ "v", "n", "s" }, "<leader>sc", "<cmd>q<cr>", { desc = "关闭窗口/Exit Window" })

map("v", "<C-c>", '"+y', { desc = "copy" })
map("i", "<C-c>", '<Esc>"+y', { desc = "copy" })
map("n", "<C-c>", '"+y', { desc = "copy" })

map("n", "<C-x>", '"+x', { desc = "cut" })
map("i", "<C-c>", '<Esc>"+x', { desc = "cut" })
map("v", "<C-x>", '"+x', { desc = "cut" })

map("n", "<C-z>", "u", { desc = "撤销/undo" })
map("i", "<C-z>", "<Esc>u", { desc = "撤销/undo" })



-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<leader>wj", "<C-W>s", { desc = "向下新增窗口/Split window below", remap = true })
map("n", "<leader>wl", "<C-W>v", { desc = "向右新增窗口/Split window right", remap = true })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
