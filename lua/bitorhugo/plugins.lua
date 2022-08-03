local fn = vim.fn

-- check if packer is installed
-- if not, do so
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print('status not ok')
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "ellisonleao/gruvbox.nvim" 	-- colorcheme gruvbox
--	use "sainnhe/gruvbox-material" -- gruvbox material
		use 'folke/tokyonight.nvim'
--	use 'EdenEast/nightfox.nvim' 
--	use 'kyazdani42/blue-moon'
--	use 'tomasiser/vim-code-dark'
		use 'marko-cerovac/material.nvim'

	use "neovim/nvim-lspconfig" -- lsp
	use "williamboman/nvim-lsp-installer" -- lsp installer helper

	use 'nvim-treesitter/nvim-treesitter' -- nvim-treesitter

	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-nvim-lsp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completionsgruvbox
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

	use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to used

	-- lualine with emoticons
	use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

	use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
