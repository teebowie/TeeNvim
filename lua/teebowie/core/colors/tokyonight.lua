local status_ok = pcall(require, 'tokyonight')
if not status_ok then
  return
end

-- Default config
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_sidebars = {"Trouble"}
vim.g.tokyonight_terminal_colors = true

vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_italic_variables = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

