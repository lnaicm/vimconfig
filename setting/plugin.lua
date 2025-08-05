-- Plugin loading (vim-plug still uses Vimscript)
vim.cmd [[
	call plug#begin()

	" LSP and core
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'tpope/vim-sensible'
	Plug 'mechatroner/rainbow_csv'
	Plug 'nvim-tree/nvim-web-devicons'

	" nvim-cmp plugins
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'

	" Treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
	Plug 'nvim-telescope/telescope-fzf-native.nvim',
		\ { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release &&
		\ cmake --build build --config Release' }

	" Themes
	Plug 'folke/tokyonight.nvim'
	Plug 'savq/melange-nvim'
	Plug 'catppuccin/nvim'
	Plug 'sainnhe/gruvbox-material'

	call plug#end()
]]
-- Reload the file or restart Vim, then you can,
-- :PlugInstall to install the plugins
-- :PlugUpdate to install or update the plugins
-- :PlugDiff to review the changes from the last update
-- :PlugClean to remove plugins no longer in the list

