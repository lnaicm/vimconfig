-- Include config from .vimrc
local vimrc_path = os.getenv("USERPROFILE") .. '\\AppData\\Local\\nvim\\vimrc'
local vimconfig_path = os.getenv("USERPROFILE") .. '\\AppData\\Local\\nvim\\config\\?.lua;'
--vim.cmd('source ' .. os.getenv("USERPROFILE") .. '\\AppData\\Local\\nvim\\vimrc')

package.path = package.path .. vimconfig_path

vim.cmd('source ' .. vimrc_path)

require('lsp_config')
require('nvimtree_config')
require('nvim-cmp_config')
