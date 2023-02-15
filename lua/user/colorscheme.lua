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
