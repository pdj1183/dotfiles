require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		notify = true,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
	},
})

vim.cmd.colorscheme("catppuccin")
