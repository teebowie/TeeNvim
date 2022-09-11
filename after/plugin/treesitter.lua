local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then return end

treesitter.setup {
  ensure_installed = {
    "lua",
    "css",
    "gitignore",
    "html",
  },
  ignore_install = {
    "vim"
  },

  sync_install = true,
  auto_install = true,

  highlight = {
    enable = true
  },

  indent = {
    enable = true
  },
  autotag = {
    enable = true
  },

  rainbow = {
    enable = true
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false
  },
}
