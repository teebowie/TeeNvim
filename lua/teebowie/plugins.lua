local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

local packer = require("packer")

return packer.startup({
  function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    -- Core plugins
    use { 'lewis6991/impatient.nvim' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'nathom/filetype.nvim' }
    use { 'rcarriga/nvim-notify' }
    use { 'moll/vim-bbye', event = 'BufReadPre' }
    use { 'kyazdani42/nvim-web-devicons' }

    -- Colorschemes
    use { 'catppuccin/nvim' }
    use { 'teebowie/base46.nvim' }

    -- LSP
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'neovim/nvim-lspconfig' }
    use { 'jose-elias-alvarez/null-ls.nvim' }

    -- Fuzzy-finder
    use { 'nvim-telescope/telescope.nvim' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }
    use { 'nvim-telescope/telescope-project.nvim' }
    use { 'sudormrfbin/cheatsheet.nvim', cmd = 'Cheatsheet' }

    -- Completion
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'rafamadriz/friendly-snippets' }
    use { 'onsails/lspkind.nvim' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'p00f/nvim-ts-rainbow', event = 'BufReadPre' }
    use { 'JoosepAlviste/nvim-ts-context-commentstring' }
    use { 'windwp/nvim-ts-autotag', event = 'InsertEnter'}

    -- Utilities
    use { 'windwp/nvim-autopairs', event = 'BufReadPre' }
    use { 'norcalli/nvim-colorizer.lua', ft = { 'lua', 'css', 'scss' } }
    use { 'numToStr/Comment.nvim' }
    use { 'kylechui/nvim-surround', event = 'BufReadPre' }
    use { 'folke/zen-mode.nvim', cmd = { 'ZenMode' } }
    use { 'andweeb/presence.nvim', disable = true }

    -- Git
    use { 'lewis6991/gitsigns.nvim', event = 'BufReadPre' }

    -- Appearance
    use { 'nvim-lualine/lualine.nvim' }
    use { 'akinsho/nvim-bufferline.lua' }

      if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    compile_path = compile_path,
    max_jobs = 50,
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end
    }
  }
})
