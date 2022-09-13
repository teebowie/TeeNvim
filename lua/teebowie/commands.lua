---@diagnostic disable: unused-function, unused-local
vim.cmd([[command Ps source % | PackerSync]])
vim.cmd([[command Pj lua require'telescope'.extensions.project.project{} ]])

vim.cmd([[command Presence lua print("Presence is loaded")]])

local M = {}

function M.enable_format_on_save()
	local group = vim.api.nvim_create_augroup("format_on_save", { clear = false })
	vim.api.nvim_create_autocmd("BufWritePre", {
		callback = function()
			vim.lsp.buf.formatting()
		end,
		group = group,
	})
	vim.notify("Enabled format on save", "info", { title = "LSP", timeout = 2000 })
end

function M.disable_format_on_save()
	vim.api.nvim_del_augroup_by_name("format_on_save")
	vim.notify("Disabled format on save", "info", { title = "LSP", timeout = 2000 })
end

function M.toggle_format_on_save()
	if vim.fn.exists("#format_on_save#BufWritePre") == 0 then
		M.enable_format_on_save()
	else
		M.disable_format_on_save()
	end
end

vim.api.nvim_create_user_command("LspToggleAutoFormat", 'lua require("teebowie.commands").toggle_format_on_save()', {})

return M
