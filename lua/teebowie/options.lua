local options = {
	-- Number settings
	number = true,
	relativenumber = true,
	ruler = false,

	-- Search settings
	ignorecase = true,
	smartcase = true,

	-- Completion settings
	completeopt = "menu,menuone,noselect",
	pumheight = 10,

	-- Tab settings
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,

	-- Split options
	splitbelow = true,
	splitright = true,
  
	-- Other
  title = true,
	cursorline = true, --- Highlight of current line
	laststatus = 3, --- Have a global statusline at the bottom instead of one for each window
	mouse = "a", --- Enable mouse
	scrolloff = 10, --- Always keep space when scrolling to bottom/top edge
	signcolumn = "yes:1", --- Add extra sign column next to line number
	smartindent = true, --- Makes indenting smart
	termguicolors = true, --- Correct terminal colors
	undofile = true, --- Sets undo to file
	updatetime = 100, --- Faster completion
	viminfo = "'1000", --- Increase the size of file history
	wrap = false, --- Display long lines as just one line
  pumblend = 5 --- Show a bit transparency in the pop-up menu (CMD mode)
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
