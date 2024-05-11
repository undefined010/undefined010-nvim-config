
local M = {}

M.makefile_exec = function ()
	vim.cmd('!make')
end

M.split_vertically = function ()
	local cwd_ = vim.fn.getcwd()
	local file = vim.fn.input("File : ")

	if file == '' then
		print('no file were provieded ! ')
		return
	end
	vim.cmd("vsplit "..cwd_.."/"..file)
	print(cwd_..'/'..file)
end

M.replace_string = function ()
	local first_word = vim.fn.input('First word : ')
	local second_word= vim.fn.input('Second word: ')

	if first_word == '' or second_word == '' then
		print('first word or second is not provieded ! ')
		return
	end

	vim.cmd('%s'..'/'..first_word..'/'..second_word)
end

M.unhighlight_searched_words = function ()
	vim.cmd('nohlsearch')
end

M.search_word = function ()
	local word = vim.fn.input('Search : ')
	vim.cmd('/'..word)
end

return M
