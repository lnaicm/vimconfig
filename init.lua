-- Include config from .vimrc
--local vimrc_path = os.getenv("USERPROFILE") .. '\\AppData\\Local\\nvim\\vimrc'
-- vim.cmd('source ' .. vimrc_path)

local vim_plugin_config_path = os.getenv("USERPROFILE") .. '\\AppData\\Local\\nvim\\plugin_config\\?.lua;'
local vim_setting_path = os.getenv("USERPROFILE") .. '\\AppData\\Local\\nvim\\setting\\?.lua;'

-- Add path to lua package.path to load config
local old_package_path = package.path
package.path = package.path .. vim_plugin_config_path .. vim_setting_path


vim.g.mapleader = " "
vim.g.markdown_fenced_languages = { "vim", "help" }

-- Plugin
require('plugin')

-- Setting
require('setting')

-- Config plugins
require('lsp_config')
require('nvim-tree_config')
require('nvim-cmp_config')
require('treesitter_config')
require('telescope_config')

-- Reset lua package.path
package.path = old_package_path
