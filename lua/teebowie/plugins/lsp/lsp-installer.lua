local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "sumneko_lua",
  "cssls",
  "html",
  "pyright",
  "emmet_ls",
  "marksman",
  "tsserver",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("teebowie.plugins.lsp.handlers").on_attach,
    capabilities = require("teebowie.plugins.lsp.handlers").capabilities,
  }
  
  if server == "tsserver" then
   local tsserver_opts = require("teebowie.plugins.lsp.settings.tsserver") 
   opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
  end

  if server == "sumneko_lua" then
   local sumneko_lua_opts = require("teebowie.plugins.lsp.settings.sumneko_lua") 
   opts = vim.tbl_deep_extend("force", sumneko_lua_opts, opts)
  end

  lspconfig[server].setup(opts)
end
