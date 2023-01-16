local status_ok, mason = pcall(require, "mason")
if not status_ok then
	vim.notify("Could not load mason")
	return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	vim.notify("could not load mason_lspconfig")
	return
end

mason.setup()
mason_lspconfig.setup()
