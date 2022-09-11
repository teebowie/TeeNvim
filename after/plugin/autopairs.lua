local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then return end

local options = { 
  disable_filetype = { 'TelescopePrompt' },
  check_ts = true
}

autopairs.setup(options)
