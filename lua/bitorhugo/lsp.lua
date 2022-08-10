-- lsp for python
require'lspconfig'.pyright.setup{}

-- lsp for golang
require'lspconfig'.gopls.setup{
	on_attach = function () 
		-- set a keybind to 'K' for hover 
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	end
}

-- lsp for c / cpp
require'lspconfig'.clangd.setup {
	on_attach = function ()
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	end
}

-- lsp for ocaml
require'lspconfig'.ocamllsp.setup{
	on_attach = function () 
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	end
}

-- lsp for java
require'lspconfig'.jdtls.setup{}
