require("teebowie.plugins")
require("teebowie.utils")

require("teebowie.options")
require("teebowie.keymaps")
require("teebowie.autocommands")

require("teebowie.cmp")
require("teebowie.telescope")
require("teebowie.nvimtree")
require("teebowie.autopairs")
require("teebowie.comment")
require("teebowie.bufferline")
require("teebowie.nvim-surround")
require("teebowie.lsp")
require("teebowie.trouble")
require("teebowie.lualine")
require("teebowie.alpha")
require("teebowie.treesitter")
require("teebowie.toggleterm")

-- Must load theme configuration before vim.cmd
require("teebowie.colors.tokyonight")
require("teebowie.colors.catppuccin")
require("teebowie.colorscheme")

require("teebowie.colors.telescope_theming")
-- Todo:
-- Git
