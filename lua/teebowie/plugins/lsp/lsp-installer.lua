-- Setup installer & lsp configs
local mason_ok, mason = pcall(require, "mason")
local mason_lsp_ok, mason_lsp = pcall(require, "mason-lspconfig")

if not mason_ok or not mason_lsp_ok then
	return
end

mason.setup({
	ui = {
		border = "rounded",
	},
})

mason_lsp.setup({
	-- A list of servers to automatically install if they're not already installed
	ensure_installed = { "css-lsp", "eslint-lsp", "eslint-d", "html-lsp", "lua-language-server", "marksman", "prettier", "typescript-language-server", "emmet-ls" },

	-- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
	-- This setting has no relation with the `ensure_installed` setting.
	-- Can either be:
	--   - false: Servers are not automatically installed.
	--   - true: All servers set up via lspconfig are automatically installed.
	--   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
	--       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
	automatic_installation = true,
})

local lspconfig = require("lspconfig")

local servers = { "cssls", "eslint", "html", "sumneko_lua", "marksman", "tsserver", "emmet_ls" }

local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
	["textDocument/publishDiagnostics"] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics,
		{ virtual_text = true }
	),
}

local function on_attach(client, bufnr)
	-- set up buffer keymaps, etc.
	local opts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keymap
	keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	keymap(bufnr, "n", "<leader>rn", ":Lspsaga rename<CR>", opts)
	keymap(bufnr, "n", "<leader>gd", "<cmd>lua require'lspsaga.provider'.lsp_finder()<cr>", opts)
	keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
	keymap(bufnr, "n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", opts)
	keymap(bufnr, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", opts)
	keymap(bufnr, "n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
	keymap(bufnr, "n", "<leader>sg", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", opts)
	keymap(bufnr, "n", "gl", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
	keymap(bufnr, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
	keymap(bufnr, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_nvim_lsp_ok then
	capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
end

-- Order matters
for _, server in ipairs(servers) do
	lspconfig[server].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		handlers = handlers,
	})
end
