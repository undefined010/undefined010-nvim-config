require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {'lua_ls'}
})

local on_attach = function(_,_)
	vim.keymap('n','<leader>rn',vim.lsb.buf.rename,{})
	vim.keymap('n','<leader>cn',vim.lsb.buf.code_action,{})

	vim.keymap('n','gd',vim.lsp.buf.definition,{})
    vim.keymap('n','gi',vim.lsp.buf.implementation,{})
	vim.keymap('n','gr',require('telescope.builtin').lsp_references,{})
	vim.keymap('n','K',vim.lsp.buf.hover,{})
	
end

require('lspconfig').lua_ls.setup{
	on_attach = on_attach
}
