-- lsp for python
require'lspconfig'.pyright.setup{}

-- lsp for golang
require'lspconfig'.gopls.setup{
	on_attach = function () 
		-- set a keybind to 'K' for hover 
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	end
}

require'lspconfig'.clangd.setup {}
require'lspconfig'.ocamllsp.setup{}
