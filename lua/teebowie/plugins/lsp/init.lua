local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("teebowie.plugins.lsp.lsp-installer")
require("teebowie.plugins.lsp.handlers").setup()
require("teebowie.plugins.lsp.null-ls")
require("lspsaga")
require("trouble")
