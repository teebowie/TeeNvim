local mason_ok, mason = pcall(require, 'mason')
if not mason_ok then return end

local masonlsp_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not masonlsp_ok then return end

mason.setup (
  {
    ui = {
      border = 'rounded'
    }
  }
)

mason_lspconfig.setup (
  {
    ensure_installed = { 'sumneko_lua', 'cssls', 'html', 'tsserver', 'emmet_ls', 'prettierd' }
  }
)
