
local M = {}

M.makefile_exec = function ()
	local usr_input = vim.fn.input("Do you want to write a makefile or just running one (y,n): ")

	if usr_input == 'n' then
		vim.cmd('!make')
	end

	if usr_input == 'y' then

		-- TODO:- bad code make it better later

		local usr_input2 = vim.fn.input("1)Rust,2)C++,3)C (write there name):- ")

		if usr_input2 == 'Rust' then
			local file = assert(io.open('Makefile','w'),"null")
			file:write("all:\n")
			file:write("\tcargo run --release\n")
			file:close()
		end

		if usr_input2 == 'C++' then
			local file = assert(io.open('Makefile','w'),"null")
			file:write("all:\n")
			file:write("\tclang++ main.cpp\n")
			file:close()
		end

		if usr_input2 == 'C' then
			local file = assert(io.open('Makefile','w'),"null")
			file:write("all:\n")
			file:write("\tclang main.c")
			file:close()
		end

	end


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
