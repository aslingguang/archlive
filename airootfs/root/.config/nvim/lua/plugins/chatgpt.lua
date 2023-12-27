return {
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup()
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("chatgpt").setup({
				api_key_cmd = "sk-1vBqzA2UCkI6TFPkchDyHvz3X1BTysStlEvWXf58ubsqYm06",
				api_host_cmd = "https://api.chatanywhere.com.cn",
			})
		end,
	},
}
