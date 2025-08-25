local custom = require('core.plugin_config.custom-plugins')

-- keybindings

vim.keymap.set('n','<c-t>',vim.cmd.terminal)
vim.keymap.set('n','<leader>s',custom.search_word)							-- highlighting searched words 	"search for words"
vim.keymap.set('n','<leader>h',custom.unhighlight_searched_words)			-- un highlight the searched words
vim.keymap.set('n','<leader>r',custom.replace_string) 						-- replaces words
vim.keymap.set('n','<leader>v',custom.split_vertically)						-- splits the screen vertically
vim.keymap.set('n','<leader>m',custom.run_a_makefile)						-- runs a premake makefile 
vim.keymap.set('n','<leader><leader>m',custom.makefile_exec)				-- triggers the make command which make a makefile
vim.keymap.set('n','<leader><leader>n',custom.go_to_line)					-- goes to the wanted line 
