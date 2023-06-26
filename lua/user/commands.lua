local function command(name, cmd, opts) vim.api.nvim_create_user_command(name, cmd, opts or {}) end

command("BooleanAlgebra", function()
	vim.cmd("silent! %s/\\<not /¬/g")
	vim.cmd("silent! %s/\\<not\\>/¬/g")
	vim.cmd("silent! %s/\\<and\\>/∧/g")
	vim.cmd("silent! %s/\\<or\\>/∨/g")
end)
