local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Config :Packer behaviour
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install plugin here
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("lewis6991/impatient.nvim")
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins
	use("nathom/filetype.nvim")
	use("rcarriga/nvim-notify")
	use("moll/vim-bbye")
	use("kyazdani42/nvim-web-devicons")

	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("kylechui/nvim-surround")
	use("nvim-lualine/lualine.nvim")
	use("goolord/alpha-nvim")
	use("akinsho/bufferline.nvim")
	use("andymass/vim-matchup")
	use("lukas-reineke/indent-blankline.nvim")
	use("Shatur/neovim-session-manager")
	use("stevearc/dressing.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("folke/todo-comments.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- Completions
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")

	-- Snippets Engine
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- LSP
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("folke/trouble.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("kkharji/lspsaga.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use("p00f/nvim-ts-rainbow")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
