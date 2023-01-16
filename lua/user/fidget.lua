local status_ok, fidget = pcall(require, "fidget")
if not status_ok then
	vim.notify("could not get fidget")
	return
end

fidget.setup {
	window = {
		border = "rounded"
	}
}
