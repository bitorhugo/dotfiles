-- table containg all options
-- equivalent of doing set cmd on vimscript
local options = {
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	tabstop = 2,
	softtabstop = 2,
	belloff = all,
	completeopt = menu, menuone, noselect,
	background = "dark",
	updatetime = 300,
	splitright = true,
	splitbelow = true,
	ignorecase = true,
	backup = false,
	hls = false,
	termguicolors = true,
	guicursor = "", 
}

-- set each option from 'options' table
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- run vimscript inside nvim with vim.cmd
vim.cmd([[colorscheme monokai]])
--Lua:
vim.g.material_style = "palenight"
vim.cmd [[set iskeyword+=-]] -- treat special char words as one e.g: vim.cmd -> one word
