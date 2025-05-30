local border = "rounded"


local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end


vim.diagnostic.config({
	float = {
		border = border,
	},
})

local handlers = {
    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

vim.diagnostic.config({
  -- disable virtual text
  virtual_text = false,
  -- show signs
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = true,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = false,
    prefix = "",
  },
})

local function lsp_highlight_document(client)
  -- Set autocommands conditional on server_capabilities
	-- Move extra info to the right hand side of the cmp menu (I think)
  if client.server_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
      false
    )
  end
end


local on_attach = function(client, bufnr)
	 print("attaching things for server", client.name)
  lsp_highlight_document(client)
end


local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config('*', {
  capabilities = capabilities,
	handlers = handlers,
  root_markers = { '.git' },
	on_attach = on_attach,
})

vim.lsp.enable('clangd')
vim.lsp.config('clangd', {
	capabilities = capabilities,
	cmd = { "/Library/Developer/CommandLineTools/usr/bin/clangd" },
	on_attach = on_attach,
})

vim.lsp.enable("texlab")
