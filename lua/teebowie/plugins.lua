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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

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
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins
	use("windwp/nvim-autopairs") -- Auto close parentheses
	use("numToStr/Comment.nvim") -- Comment plugin
	-- use({ "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" }, disable = true })
	use("moll/vim-bbye")
	use("kylechui/nvim-surround")
	use("lewis6991/impatient.nvim")
	use("nvim-lualine/lualine.nvim")
	use("goolord/alpha-nvim")
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })
	use({ "akinsho/toggleterm.nvim", tag = "v2.*" })

	-- Colorschemes
	use({ "sainnhe/gruvbox-material" })
	use({ "folke/tokyonight.nvim" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "Mofiqul/dracula.nvim" })

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- NvimTree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		tag = "nightly",
	})

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
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	-- use 'RRethy/vim-illuminate'
	use("folke/trouble.nvim")
	use("jose-elias-alvarez/null-ls.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use("p00f/nvim-ts-rainbow")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
