-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "ellisonleao/gruvbox.nvim" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
		},
	})
	use("ThePrimeagen/vim-be-good")
	-- use({
	-- 	"jackMort/ChatGPT.nvim",
	-- 	config = function()
	-- 		require("chatgpt").setup()
	-- 	end,
	-- 	requires = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- })

	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use({
		"luukvbaal/nnn.nvim",
		config = function()
			require("nnn").setup()
		end,
	})
	use("neovim/nvim-lspconfig")
	-- use('jose-elias-alvarez/null-ls.nvim')
	use("nvimtools/none-ls.nvim")

	use("MunifTanjim/prettier.nvim")

	use("SalOrak/whaler")
	use("windwp/nvim-ts-autotag")
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp",
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use("nvim-tree/nvim-web-devicons")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({
		"xbase-lab/xbase",
		run = "make install", -- or "make install && make free_space" (not recommended, longer build time)
		requires = {
			"neovim/nvim-lspconfig",
			-- "nvim-telescope/telescope.nvim", -- optional
			-- "nvim-lua/plenary.nvim", -- optional/requirement of telescope.nvim
			-- "stevearc/dressing.nvim", -- optional (in case you don't use telescope but something else)
		},
		config = function()
			require("xbase").setup({}) -- see default configuration bellow
		end,
	})

	use("mfussenegger/nvim-jdtls")

	-- use {
	--     "kndndrj/nvim-dbee",
	--     requires = {
	--         "MunifTanjim/nui.nvim",
	--     },
	--     run = function()
	--         -- Install tries to automatically detect the install method.
	--         -- if it fails, try calling it with one of these parameters:
	--         --    "curl", "wget", "bitsadmin", "go"
	--         require("dbee").install()
	--     end,
	--     config = function()
	--         require("dbee").setup(--[[optional config]])
	--     end
	-- }
	use({
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					keymap = {
						accept = "<M-Tab>",
						next = "<C-n>",
						prev = "<C-p>",
						dismiss = "<Esc>",
					},
				},
			})
		end,
	})

	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_autostart = 1
		end,
		ft = { "markdown" },
	})

	use({
		"olimorris/codecompanion.nvim",
		config = function()
			require("codecompanion").setup()
		end,
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		dependencies = {
			"Davidyz/VectorCode",
		},
		opts = function()
			return your_opts_here
		end,
	})

	use({
		"Davidyz/VectorCode",
		version = "*",
		build = "uv tool upgrade vectorcode", -- This helps keeping the CLI up-to-date
		-- build = "pipx upgrade vectorcode", -- If you used pipx to install the CLI
		dependencies = { "nvim-lua/plenary.nvim" },
	})
	require("vectorcode").check()

	use({
		"MeanderingProgrammer/render-markdown.nvim",
		after = { "nvim-treesitter" },
		requires = { "echasnovski/mini.nvim", opt = true }, -- if you use the mini.nvim suite
		-- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
		requires = { "nvim-tree/nvim-web-devicons", opt = true }, -- if you prefer nvim-web-devicons
		config = function()
			require("render-markdown").setup({})
		end,
	})

	-- use({
	-- 	"windwp/nvim-autopairs",
	-- 	config = function()
	-- 		require("nvim-autopairs").setup({})
	-- 	end,
	-- })

	use("terrortylor/nvim-comment")

	use("echasnovski/mini.nvim")
	use("rebelot/kanagawa.nvim")
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify", -- optional, only needed if you want notification view
		},
	})
	-- nvim v0.7.2
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({ "catppuccin/nvim", as = "catppuccin" })
end)
