  --comments
  return {
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    --  注释键位映射(增加，不覆盖默认)
    keys = {
        {   '<leader>/',
            '<ESC><CMD>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR>',
            desc = 'Comment toggle linewise (visual)' 
        },
        {   '<leader>bc',
            '<CMD>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR>',
            desc = 'Comment toggle blockwise (visual)' 
        },

    },
    config = function()
      require('Comment').setup({
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
        
        --  注释键位映射(覆盖默认)
        -- toggler = {
        --     line = '<leader>cc',
        --     block = '<leader>bc',
        -- },
        -- opleader = {
        --     line = '<leader>c',
        --     block = '<leader>b',
        -- },
      })
    end,

  },
}