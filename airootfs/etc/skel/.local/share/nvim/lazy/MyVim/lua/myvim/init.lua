local M = {}

---@param opts? MyVimConfig
function M.setup(opts)
  require("myvim.config").setup(opts)
end

return M
