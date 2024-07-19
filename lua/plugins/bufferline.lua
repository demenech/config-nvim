local bufferline = require("bufferline")

bufferline.setup({
  options = {
    --  mode = "tabs",
    show_buffer_close_icons = false,
    separator_style = { "|", "|" },
    always_show_bufferline = true,
    style_preset = bufferline.style_preset.no_italic,
    numbers = function(opts)
      return string.format("%s", opts.ordinal)
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "EcovimNvimTreeTitle",
        text_align = "center",
        separator = true,
      },
    },
  },
})

