local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-h>", "<C-w>h", opts)

-- Telescope
keymap("n", "<leader>fa", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", ":Telescope git_files<cr>", opts)
