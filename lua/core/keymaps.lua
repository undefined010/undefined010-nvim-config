
-- keybindings

vim.keymap.set('n','<leader>s',':/')				-- highlighting searched words 	"search for words"
vim.keymap.set('n','<leader>h',':nohlsearch<CR>')	-- un highlight the searched words
vim.keymap.set('n','<leader>r',':%s/') 				-- replace words
vim.keymap.set('n','<leader>v',':vsplit')			-- split the screen vertically
vim.keymap.set('n','<leader>m',':!make')			-- trigger the make command which runs a makefile

