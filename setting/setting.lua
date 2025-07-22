-- Disable compatibility with vi
vim.opt.compatible = false

vim.cmd[[
	" Helps force plugins to load correctly when it is turned back on below.
	filetype off

	" Enable plugins and load plugin for the detected file type.
	filetype plugin indent on

	" Turn syntax highlighting on.
	syntax on
]]

-- Highlight cursor line underneath the cursor horizontally.
vim.opt.cursorline = false

-- Highlight cursor line underneath the cursor vertically.
vim.opt.cursorcolumn = false

-- Blink cursor on error instead of beeping.
vim.opt.visualbell = true

-- Tab/Spaces when press Tab (fasle: Tab, true: Spaces).
vim.opt.expandtab = false
-- Tab width.
vim.opt.tabstop = 4
-- Indent width.
vim.opt.shiftwidth = 4
-- Works only when expandtab is set (inserts spaces instead of a real tab).
vim.opt.softtabstop = 4
-- Auto indent.
vim.opt.smartindent = true

-- Show line number.
vim.opt.number = true

-- Show file stats.
vim.opt.ruler = true

-- Encoding.
vim.opt.encoding = "utf-8"

-- Security.
vim.opt.modelines = 0

-- Show color column at 80 characters width,
-- visual reminder of keepingcode line within a popular line width.
vim.opt.colorcolumn = "80"

-- Wraps text to fit screen width?
vim.opt.wrap = false

-- Enable auto completion menu after pressing TAB.
vim.opt.wildmenu = true
-- Make wildmenu behave like similar to Bash completion.
vim.opt.wildmode = { "list", "longest" }

-- Switch buffer without saving changes.
vim.opt.hidden = true

-- Show status bar.
vim.opt.laststatus = 2

-- Show what mode you are currently editing in
vim.opt.showmode = true

-- Shows partial commands in the last line of the screen
vim.opt.showcmd = true

-- List white spaces as characters
vim.opt.listchars = {
  eol = "¬",
  tab = ">-",
  trail = "~",
  extends = ">",
  precedes = "<",
  space = "·"
}

-- Show white spaces characters
vim.opt.list = false

-- Colorscheme
vim.cmd.colorscheme("melange")

-- Optional: Auto-pairs (commented out, Lua equivalent with nvim-autopairs available)
-- You can use a plugin like 'windwp/nvim-autopairs' instead
-- vim.keymap.set('i', '"', '""<Left>')
-- vim.keymap.set('i', "'", "''<Left>")
-- vim.keymap.set('i', '(', '()<Left>')
-- vim.keymap.set('i', '[', '[]<Left>')
-- vim.keymap.set('i', '{', '{}<Left>')
-- vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O')
-- vim.keymap.set('i', '{;<CR>', '{<CR>};<ESC>O')

vim.g.mapleader = " "
vim.g.markdown_fenced_languages = { "vim", "help", "python", "bash=sh",
									"javascript", "json", "html", "lua"}
