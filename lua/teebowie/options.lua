local o = vim.opt
local g = vim.g

-- Number settings
o.number = true
o.relativenumber = true
o.ruler = false

-- Search settings
o.ignorecase = true -- ignore case when searching
o.smartcase = true -- unless the search has a capital letter

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"

-- 2 spaces instead of tabs
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

-- enable the mouse
o.mouse = "a"

-- splits should automatically open right or below
o.splitbelow = true
o.splitright = true

-- true colors
o.termguicolors = true

-- global statusline
o.laststatus = 3

-- use filetype.lua instead of filetype.vim
g.did_load_filetypes = 0
g.do_filetype_lua = 1
