require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {'lua_ls','clangd','intelephense'}
})

local on_attach = function(_,_)
	vim.keymap('n','<leader>rn',vim.lsb.buf.rename,{})
	vim.keymap('n','<leader>cn',vim.lsb.buf.code_action,{})

	vim.keymap('n','gd',vim.lsp.buf.definition,{})
    vim.keymap('n','gi',vim.lsp.buf.implementation,{})
	vim.keymap('n','gr',require('telescope.builtin').lsp_references,{})
	vim.keymap('n','K',vim.lsp.buf.hover,{})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup{
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics	= {globals = {'vim'}}
		}
	}
}

require('lspconfig').clangd.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

require('lspconfig').intelephense.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}
