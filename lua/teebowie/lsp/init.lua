local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "teebowie.lsp.lsp-installer"
require("teebowie.lsp.handlers").setup()
require "teebowie.lsp.null-ls"
