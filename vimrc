" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Helps force plugins to load correctly when it is turned back on below.
filetype off

" TODO: Load plugins here (pathogen or vundle, we recommend vundle)
call plug#begin()

" List your plugins here
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'tpope/vim-sensible'
    Plug 'folke/tokyonight.nvim'
    Plug 'mechatroner/rainbow_csv'
    Plug 'nvim-tree/nvim-web-devicons'

    " nvim-cmp plugin list begin
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    " nvim-cmp plugin list end
call plug#end()
" Reload the file or restart Vim, then you can,
" :PlugInstall to install the plugins
" :PlugUpdate to install or update the plugins
" :PlugDiff to review the changes from the last update
" :PlugClean to remove plugins no longer in the list

" Enable plugins and load plugin for the detected file type.
filetype plugin indent on

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
"set cursorline

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Show line numbers.
set number

" Show file stats.
set ruler

" Blink cursor on error instead of beeping.
set visualbell

" Encoding.
set encoding=utf-8

" Security.
set modelines=0

" Show color column at 80 characters width, visual reminder of keepingcode line within a popular line width.
set colorcolumn=80

"Wraps text instead of forcing a horizontal scroll
set wrap

"Reacts to the syntax/style of the code you are editing
set smartindent

"Makes sure that spaces are used for indenting lines, even when you press the "Tab" key
set expandtab

"This will insert 2 spaces for a line indent
set tabstop=4

"Manages the indentation when you use the ">>" or "<<" operators to add or remove indentation to an already existing line/block of code
set shiftwidth=4

"The previous commands can be combined into a single line
"set tabstop=2 shiftwidth=2 expandtab

"Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Allow hidden buffers.
set hidden

" Rendering.
set ttyfast

" Status bar.
set laststatus=2

" Show what mode you are currently editing in
set showmode

" Shows partial commands in the last line of the screen
set showcmd

" List white spaces as characters
:set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·

" Show white spaces characters
":set list

" Set color scheme
colorscheme tokyonight

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

