vim.cmd [[
	augroup term
		autocmd TermOpen * startinsert
		autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
	augroup END
]]
