-- Gitsigns
local gitsigns_ok, gitsigns = pcall(require, "gitsigns")
if not gitsigns_ok then return end

gitsigns.setup()

-- vim-fugitive clone: git.nvim
local git_ok, git = pcall(require, "git")
if not git_ok then return end

git.setup()
