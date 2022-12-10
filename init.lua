-- init.lua zhspan
local config_dir = vim.fn.stdpath('config')

-- Load plugins
local load_plugins_path = config_dir .. '/load_plugins.lua'
dofile(load_plugins_path)

-- Default settings
local editor_settings_path = config_dir .. '/editor_settings.lua'
dofile(editor_settings_path)
