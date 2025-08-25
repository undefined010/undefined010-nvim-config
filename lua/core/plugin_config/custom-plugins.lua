
local M = {}

M.run_a_makefile = function ()
	-- just trigger the make command
	vim.cmd('!make')
end

M.go_to_line = function ()

	local user_line_input = vim.fn.input("Enter the number of the line: ")

	local number = tonumber(user_line_input)

	if number == nil then
		print("the input is not a number")
	end

	if number ~= nil then
		vim.cmd(tostring(number))
	end
end

M.makefile_exec = function ()

	-- TODO:- bad code make it better later
	-- Note:- it's just make a simple makefile you should edit it to suit your needs 

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
		file:write("\tclang++ main.cpp && ./a.out\n")
		file:close()
	end

	if usr_input2 == 'C' then
		local file = assert(io.open('Makefile','w'),"null")
		file:write("\tclang main.c && ./a.out")
		file:close()
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

	vim.cmd('%s'..'@'..first_word..'@'..second_word..'@g')
	vim.cmd('nohlsearch')
end

M.unhighlight_searched_words = function ()
	vim.cmd('nohlsearch')
end

M.search_word = function ()
	local word = vim.fn.input('Search : ')
	vim.cmd('/'..word)
	vim.cmd('nohlsearch')
end

return M
