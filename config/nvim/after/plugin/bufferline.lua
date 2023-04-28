require("bufferline").setup({
  options = {
    color_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    unique_name = true,
  },
   highlights = {
    background = {
      fg = '#b0b2b1',
    },
    buffer_selected = {
      fg = '#de935f',
      bold = true,
      italic = false,
    },
  },
})
