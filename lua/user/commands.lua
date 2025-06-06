local function command(name, cmd, opts) vim.api.nvim_create_user_command(name, cmd, opts or {}) end

command("BooleanAlgebra", function()
	vim.cmd("silent! %s/\\<not /¬/g")
	vim.cmd("silent! %s/\\<not\\>/¬/g")
	vim.cmd("silent! %s/\\<and\\>/∧/g")
	vim.cmd("silent! %s/\\<or\\>/∨/g")
end)

command("Moo", function()
	vim.cmd("silent! %s/\\<end\\>/moo/g")
	vim.cmd("silent! %s/\\<next\\>/moO/g")
	vim.cmd("silent! %s/\\<prev\\>/mOo/g")
	vim.cmd("silent! %s/\\<exec\\>/mOO/g")
	vim.cmd("silent! %s/\\<char\\>/Moo/g")
	vim.cmd("silent! %s/\\<dec\\>/MOo/g")
	vim.cmd("silent! %s/\\<inc\\>/MoO/g")
	vim.cmd("silent! %s/\\<while\\>/MOO/g")
	vim.cmd("silent! %s/\\<clear\\>/OOO/g")
	vim.cmd("silent! %s/\\<reg\\>/MMM/g")
	vim.cmd("silent! %s/\\<pint\\>/OOM/g")
	vim.cmd("silent! %s/\\<rint\\>/oom/g")
end)

command("Unmoo", function()
	vim.cmd("silent! %s/\\<moo\\C\\>/end/g")
	vim.cmd("silent! %s/\\<moO\\C\\>/next/g")
	vim.cmd("silent! %s/\\<mOo\\C\\>/prev/g")
	vim.cmd("silent! %s/\\<mOO\\C\\>/exec/g")
	vim.cmd("silent! %s/\\<Moo\\C\\>/char/g")
	vim.cmd("silent! %s/\\<MOo\\C\\>/dec/g")
	vim.cmd("silent! %s/\\<MoO\\C\\>/inc/g")
	vim.cmd("silent! %s/\\<MOO\\C\\>/while/g")
	vim.cmd("silent! %s/\\<OOO\\C\\>/clear/g")
	vim.cmd("silent! %s/\\<MMM\\C\\>/reg/g")
	vim.cmd("silent! %s/\\<OOM\\C\\>/pint/g")
	vim.cmd("silent! %s/\\<oom\\C\\>/rint/g")
end)
