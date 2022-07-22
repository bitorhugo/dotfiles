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
	splitbelow = true,
	splitright = true,
	ignorecase = true,
	backup = false,
}

-- set each option from 'options' table
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- run vimscript inside nvim with vim.cmd
vim.cmd([[colorscheme gruvbox]])
vim.cmd [[set iskeyword+=-]] -- treat special char words as one e.g: vim.cmd -> one word
