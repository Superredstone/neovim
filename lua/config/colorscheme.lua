require("themery").setup({
	themes = {
		{
			name = "Onedark",
			colorscheme = "onedark"
		},
		{
			name = "Gruvbox",
			colorscheme = "gruvbox"
		},
		{
		    name = "Tokyonight",
		    colorscheme = "tokyonight"
		}
	},
	livePreview = true,
})

vim.cmd([[colorscheme onedark]])
