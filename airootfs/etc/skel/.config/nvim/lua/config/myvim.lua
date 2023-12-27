local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {	
		{ "aslingguang/MyVim", import = "myvim.plugins" },
		-- { import = "myvim.my.coding.codeium"},
		{ import = "myvim.my" },
		-- { import = "myvim.my.code-runner" },
		-- { import = "myvim.my.codeium" },
		-- { import = "myvim.my.comment" },
		-- { import = "myvim.my.dial" },
		-- { import = "myvim.my.fzf" },
		-- { import = "myvim.my.nvim-tree" },
		-- { import = "myvim.my.ranger" },

		-- { import = "plugins.chatgpt" },
		-- { import = "myvim.lazy.telescope" },
		-- { import = "myvim.lazy.neo-tree" },
		-- { import = "plugins.codegpt" },

		-- { import = "myvim.config.myoptions" },
		-- { import = "myvim.config.my" },
		-- { import = "myvim.lazy" },
		-- import any extras modules here
		-- { import = "myvim.plugins.extras.lang.typescript" },
		-- { import = "myvim.plugins.extras.lang.json" },
		-- { import = "myvim.plugins.extras.util" },
		-- { import = "myvim.plugins.extras.ui.mini-animate" },
		-- import/override with your plugins
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

