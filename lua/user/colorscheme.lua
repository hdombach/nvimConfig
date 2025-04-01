vim.cmd [[
try
  colorscheme gruvbox
	set background=dark
	highlight DiagnosticError ctermfg=203 guifg=GruvboxRed
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
--[[
vim.cmd [[
try
  colorscheme nord 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
--]]

vim.api.nvim_set_hl(0, "NormalFloat", {link="cleared"})
vim.api.nvim_set_hl(0, "FloatBorder", {link="cleared"})
vim.api.nvim_set_hl(0, "CurrentWord", {bold=true, underline=true, link="Label"})
vim.api.nvim_set_hl(0, "CurrentWordTwins", {bold=true, link="Label"})
vim.api.nvim_set_hl(0, "Comment", {bold=true, ctermfg=243, fg="#7c6f64"})
vim.api.nvim_set_hl(0, "Identifier", {link="cleared"})
vim.api.nvim_set_hl(0, "Function", {link="cleared"})
vim.api.nvim_set_hl(0, "Function", {link="cleared"})
vim.api.nvim_set_hl(0, "@variable", {link="cleared"})
vim.api.nvim_set_hl(0, "Delimiter", {link="cleared"})
vim.api.nvim_set_hl(0, "DiagnosticError", {link="GruvboxRed"})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {link="GruvboxYellow"})
