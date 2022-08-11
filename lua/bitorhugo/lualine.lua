local ok, lualine = pcall(require, "lualine")
if not ok then
	print('not')
  return
end

lualine.setup({
  options = {
		section_separators = '',
		component_separators = '',
    icons_enabled = false,
    theme = "palenight",
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    always_divide_middle = true,
    globalstatus = false,
		refresh = {
			statusline = 125, 
			tabline = 125, 
			winbar = 125
		},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {},
		lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})
