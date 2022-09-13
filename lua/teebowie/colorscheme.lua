local b46_ok, base46 = pcall(require, 'base46')
if not b46_ok then
vim.cmd [[colorscheme catppuccin]]
end

local theme_opts = {
  base = "base46",
  theme = "catppuccin",
  transparency = false,
}

base46.load_theme(theme_opts)
