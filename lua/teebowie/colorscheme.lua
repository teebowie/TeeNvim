-- vim.g.catppuccin_flavour = "mocha"
--
-- require('catppuccin').setup({
--   styles = {
--     comments = {},
--     conditionals = {},
--   },
-- })
-- vim.cmd [[colorscheme catppuccin]]

local theme_opts = {
  base = "base46",
  theme = "catppuccin",
  transparency = false,
}

pcall(require('base46')).load_theme(theme_opts)
