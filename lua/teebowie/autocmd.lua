local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Disable statusline in dashboard
augroup("alpha_tabline", { clear = true })

autocmd("FileType", {
	group = "alpha_tabline",
	pattern = "alpha",
	command = "set showtabline=0 laststatus=0 noruler",
})

autocmd("FileType", {
	group = "alpha_tabline",
	pattern = "alpha",
	callback = function()
		autocmd("BufUnload", {
			group = "alpha_tabline",
			buffer = 0,
			command = "set showtabline=2 ruler laststatus=3",
		})
	end,
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
	pattern = "*",
	command = "set fo-=c fo-=r fo-=o",
})

-- Highlight on yank
autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

-- Disable diagnostics in node_modules (0 is current buffer only)
autocmd("BufRead", { pattern = "*/node_modules/*", command = "lua vim.diagnostic.disable(0)" })
autocmd("BufNewFile", { pattern = "*/node_modules/*", command = "lua vim.diagnostic.disable(0)" })
