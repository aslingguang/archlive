-- This file is automatically loaded by myvim.config.init
local Util = require("myvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- mykeymap

map("i", "jk", "<ESC>:w<CR>", { desc = "退出编辑/Exit Editing" })
map("n", "jk", ":q<CR>", { desc = "退出/Exit" })
map("t", "jk", "<C-\\><C-n>:q<CR>", { desc = "退出终端/Exit Terminal" })

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
