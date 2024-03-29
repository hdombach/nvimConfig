local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then 
	vim.notify("could not get bufferline")
	return 
end

bufferline.setup {
	animation = false,
}

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  vim.notify("could not get lualine")
  return
end

lualine.setup {
  options = {
    icons_enabled = true,
		theme = 'auto',
    component_separators = '|',
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
		lualine_y = {'progress'},
		lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {}
}
