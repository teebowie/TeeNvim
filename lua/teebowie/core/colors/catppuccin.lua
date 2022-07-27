local status_ok, catppuccin = pcall(require, 'catppuccin')
if not status_ok then
  print('catppuccin not found')
end

catppuccin.setup(
  {
    dim_inactive = {
	enabled = false,
	shade = "dark",
	percentage = 0.15,
},
transparent_background = false,
term_colors = false,
compile = {
	enabled = false,
	path = vim.fn.stdpath "cache" .. "/catppuccin",
	suffix = "_compiled"
},
styles = {
	comments = { "bold" },
	conditionals = { "bold" },
	loops = { "bold" },
	functions = { "bold" },
	keywords = { "bold" },
	strings = { "bold" },
	variables = { "bold" },
	numbers = { "bold" },
	booleans = { "bold" },
	properties = { "bold" },
	types = { "bold" },
	operators = { "bold" },
},
integrations = {
	treesitter = true,
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = { "italic" },
			hints = { "italic" },
			warnings = { "italic" },
			information = { "italic" },
		},
		underlines = {
			errors = { "underline" },
			hints = { "underline" },
			warnings = { "underline" },
			information = { "underline" },
		},
	},
	lsp_trouble = true,
	cmp = true,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = true,
	telescope = true,
	nvimtree = {
		enabled = true,
		show_root = true,
		transparent_panel = false,
	},
	dap = {
		enabled = false,
		enable_ui = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = true,
		colored_indent_levels = false,
	},
	dashboard = true,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = true,
	bufferline = true,
	markdown = true,
	lightspeed = false,
	ts_rainbow = true,
	hop = false,
	notify = true,
	telekasten = true,
	symbols_outline = true,
	mini = false,
}
  }
)
