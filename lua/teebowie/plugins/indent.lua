vim.opt.list = true

local status_ok, indent = pcall(require, "indent_blankline")
if not status_ok then
	return
end

indent.setup({
	buftype_exclude = { "terminal", "telescope", "nofile" },
	filetype_exclude = { "help", "dashboard", "packer", "NvimTree", "Trouble", "TelescopePrompt", "Float" },
	show_current_context = true,
	show_current_context_start = false,
	show_end_of_line = false,
	show_trailing_blankline_indent = false,
	space_char_blankline = " ",
	use_treesitter = true,
})
