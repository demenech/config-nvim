local bufferline = require("bufferline")

bufferline.setup({
	options = {
		--  mode = "tabs",
		show_buffer_close_icons = false,
		always_show_bufferline = true,
		style_preset = bufferline.style_preset.minimal,
        separator_style = "thin",
		numbers = function(opts)
			return string.format("%s", opts.ordinal)
		end,
		-- diagnostics = "nvim_lsp",
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
