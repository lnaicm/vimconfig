-- Detect platform
local is_windows = package.config:sub(1,1) == '\\'
local user_dir = is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")

-- Define paths for plugin and setting directories
local vim_plugin_config_path
local vim_setting_path

if is_windows then
    vim_plugin_config_path = user_dir .. '\\AppData\\Local\\nvim\\plugin_config\\?.lua;'
    vim_setting_path = user_dir .. '\\AppData\\Local\\nvim\\setting\\?.lua;'
else
    vim_plugin_config_path = user_dir .. '/.config/nvim/plugin_config/?.lua;'
    vim_setting_path = user_dir .. '/.config/nvim/setting/?.lua;'
end

-- Add path to lua package.path to load config
local old_package_path = package.path
package.path = package.path .. ';' .. vim_plugin_config_path .. vim_setting_path

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

-- Reset path
package.path = old_package_path
