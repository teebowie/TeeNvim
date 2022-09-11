local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then return end

bufferline.setup{
  options = {
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    always_show_bufferline = false,
    enforce_regular_tabs = false,
    tab_size = 14,
  },
  highlights = {
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      italic = false,
    },
  },
}
