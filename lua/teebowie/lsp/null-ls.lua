local null_ok, null_ls = pcall(require, 'null-ls')
if not null_ok then return end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_action = null_ls.builtins.code_actions

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with {
      extra_filetypes = { "toml" },
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
    },
    formatting.stylua,
    diagnostics.eslint_d,
    code_action.eslint_d,
  },
}
