require("myvim.config").init()

return {
  { "folke/lazy.nvim", version = "*" },
  { "aslingguang/MyVim", priority = 10000, lazy = false, config = true, cond = true, version = "*" },
}
