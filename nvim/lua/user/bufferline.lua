local bufferline = require('bufferline')
bufferline.setup {
		options = {
				mode = "buffers", -- set to "tabs" to only show tabpages instead
				style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
				themable = true,
				numbers = "ordinal",
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,
				indicator = {
						icon = '▎', -- this should be omitted if indicator style is not 'icon'
						style = 'icon',
				},
				buffer_close_icon = '󰅖',
				modified_icon = '●',
				close_icon = '',
				left_trunc_marker = '',
				right_trunc_marker = '',
				--- name_formatter can be used to change the buffer's label in the bufferline.
				--- Please note some names can/will break the
				--- bufferline so use this at your discretion knowing that it has
				--- some limitations that will *NOT* be fixed.
				max_name_length = 18,
				max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
				truncate_names = true, -- whether or not tab names should be truncated
				tab_size = 18,
				diagnostics = "nvim_lsp",
				diagnostics_update_in_insert = false,
				-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
				offsets = {
						{
								filetype = "NvimTree",
								text = "File Explorer",
								text_align = "center",
								separator = true
						}
				},
				color_icons = true,
				get_element_icon = function(element)
						-- element consists of {filetype: string, path: string, extension: string, directory: string}
						-- This can be used to change how bufferline fetches the icon
						-- for an element e.g. a buffer or a tab.
						-- e.g.
						local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
						return icon, hl
				end,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
				persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
				move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
				-- can also be a table containing 2 custom separators
				-- [focused and unfocused]. eg: { '|', '|' }
				separator_style = "thin",
				enforce_regular_tabs = true,
				always_show_bufferline = true,
				hover = {
						enabled = true,
						delay = 200,
						reveal = {'close'}
				},
				sort_by = 'id',
		}
}
