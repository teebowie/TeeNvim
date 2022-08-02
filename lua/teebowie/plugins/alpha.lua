local present, alpha = pcall(require, "alpha")
if not present then
	return
end

local dashboard = require("alpha.themes.dashboard")
local if_nil = vim.F.if_nil
local icons = require("teebowie.core.icons")

local header = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
	[[                                                 ]],
	[[                                                 ]],
	[[              Trung, aka @teebow1e               ]],
}

dashboard.section.header.type = "text"

dashboard.section.header.val = header
dashboard.section.header.opts = {
	position = "center",
	hl = "AlphaHeader",
}

local leader = "SPC"

local function button(sc, txt, keybind, keybind_opts)
	local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")

	local opts = {
		position = "center",
		shortcut = sc,
		cursor = 5,
		width = 50,
		align_shortcut = "right",
	}
	if keybind then
		keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
		opts.keymap = { "n", sc_, keybind, keybind_opts }
	end

	local function on_press()
		local key = vim.api.nvim_replace_termcodes(sc_ .. "<Ignore>", true, false, true)
		vim.api.nvim_feedkeys(key, "t", false)
	end

	return {
		type = "button",
		val = txt,
		on_press = on_press,
		opts = opts,
	}
end

dashboard.section.buttons.val = {
	button("e", "   New file", "<cmd>ene <CR>"),
	button("SPC f f", icons.otherIcons.telescope .. " " .. "Find File", "<cmd>Telescope find_files<CR>", {}),
	button("SPC f w", icons.otherIcons.text .. " " .. "Find Word", "<cmd>Telescope live_grep<CR>", {}),
	button("SPC f h", icons.otherIcons.fileRecent .. " " .. "Recents", "<cmd>Telescope oldfiles hidden=true<CR>", {}),
	button("SPC c f", icons.otherIcons.cog .. " " .. "Settings", "<cmd>e $MYVIMRC<CR>", {}),
	button("-", icons.otherIcons.exit .. " " .. "Exit", "<cmd>exit<CR>", {}),
}

local function footer()
	local plugins = 46
	local v = vim.version()
	return string.format(" v%d.%d.%d   %d ", v.major, v.minor, v.patch, plugins)
end

dashboard.section.footer.val = {
	footer(),
}
dashboard.section.footer.opts = {
	position = "center",
  hl = "AlphaHeader"
}

local section = {
	header = dashboard.section.header,
	buttons = dashboard.section.buttons,
	footer = dashboard.section.footer,
}

local opts = {
	layout = {
		{ type = "padding", val = 3 },
		section.header,
		{ type = "padding", val = 2 },
		section.buttons,
		{ type = "padding", val = 1 },
		section.footer,
	},
	opts = {
		margin = 5,
	},
}

alpha.setup(opts)
