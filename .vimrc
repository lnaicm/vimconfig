" Helps force plugins to load correctly when it is turned back on below.
filetype off

" TODO: Load plugins here (pathogen or vundle, we recommend vundle)
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'

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
set cursorline
set cursorlineopt=number

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" Blink cursor on error instead of beeping.
set novisualbell

" Tab/Spaces when press Tab (noexpandtab: Tab, expandtab: Spaces).
set noexpandtab
" Tab width.
set tabstop=4
" Indent width.
set shiftwidth=4
" Works only when expandtab is set (inserts spaces instead of a real tab).
set softtabstop=4
" Auto indent.
set smartindent

" Show line number.
set number

" Show file stats.
set ruler

" Encoding.
set encoding=utf-8

" Security.
set modelines=0

" Show color column at 80 characters width,
" visual reminder of keepingcode line within a popular line width.
set colorcolumn="80"

" Wraps text to fit screen width?
set nowrap

" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=longest:full,full

" Switch buffer without saving changes.
set hidden
" Show status bar.
set laststatus=2

" Show what mode you are currently editing in
set showmode

" Shows partial commands in the last line of the screen
set showcmd

" List white spaces as characters
:set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·

" Show white spaces characters
set nolist

" Colorscheme
" set colorscheme("gruvbox-material")

" Optional: Auto-pairs (commented out, Lua equivalent with nvim-autopairs available)
" You can use a plugin like 'windwp/nvim-autopairs' instead
" inoremap " ""<Left>
" inoremap ' ''<Left>
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap {<CR> {<CR>}<Esc>O
" inoremap {;<CR> {<CR>};<Esc>O

" Set the map leader key to space
let mapleader = " "

" Enable syntax highlighting for fenced code blocks in Markdown
let g:markdown_fenced_languages = [
  \ 'vim',
  \ 'help',
  \ 'python',
  \ 'bash=sh',
  \ 'javascript',
  \ 'json',
  \ 'html',
  \ 'lua'
\ ]

