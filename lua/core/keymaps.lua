local custom = require('core.plugin_config.custom-plugins')

-- keybindings

vim.keymap.set('n','<leader>s',custom.search_word)				-- highlighting searched words 	"search for words"
vim.keymap.set('n','<leader>h',custom.unhighlight_searched_words)	-- un highlight the searched words
vim.keymap.set('n','<leader>r',custom.replace_string) 				-- replace words
vim.keymap.set('n','<leader>v',custom.split_vertically)			-- split the screen vertically
vim.keymap.set('n','<leader>m',custom.makefile_exec)			-- trigger the make command which runs a makefile
