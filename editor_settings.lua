-- *** basic settings ***
vim.o.encoding = 'utf-8'

-- *** search ***
vim.o.incsearch   = true    -- start search as soon as characters are entered
vim.o.hlsearch    = true    -- highlight matches

-- *** spaces and tabs ***
-- many of these settings will be overriden
vim.o.expandtab   = true    -- tabs are spaces
vim.o.tabstop     = 4       -- visual spaces per tab
vim.o.softtabstop = 4       -- number of spaces per tab
vim.o.shiftwidth  = 4       -- number of spaces for autoindent
vim.o.autoindent  = true    
vim.o.cindent     = false   -- turn off c indent
vim.o.smartindent = false

-- *** keybindings ***
local function map(mode, alias, command, options)
  local default_options = {
    noremap = true
  }
  if options then
    for k, v in pairs(options) do
      default_options[k] = v
    end
  end
  vim.api.nvim_set_keymap(mode, alias, command, default_options)
end

local function vim_opt_toggle(opt, on, off, name)
  local message = name
  if vim.opt[opt]:get() == off then
    vim.opt[opt] = on
    message = message .. " Enabled"
  else
    vim.opt[opt] = off
    message = message .. " Disabled"
  end
  vim.notify(message)
end

-- leader
vim.g.mapleader = ','

-- insert
map('i', 'jk', '<esc>') -- jk to exit insert mode

-- search
map('n', '<leader><space>', ':nohlsearch<CR>') -- leader space to turn off search highlight

-- navigation
map('n', '<f8>', ':TlistToggle<CR>', { silent = true }) -- f8 to toggle TagList
map('n', '<space>', 'za') -- space opens/closes folds

-- toggle column display with <leader>c
vim.keymap.set({'i', 'n'}, '<leader>c', function()
  vim_opt_toggle('cursorcolumn', true, false, 'Cursor Column')
end)

-- move graphically by default
map('n', 'j', 'gj')
map('n', 'k', 'gk')
map('v', 'j', 'gj')
map('v', 'k', 'gk')

-- *** folds ***
vim.o.foldlevel = 99 -- start with all folds disabled

-- *** visuals ***
vim.cmd([[ syntax enable ]])

-- cursor
vim.o.cursorline  = true    -- highlight current line
vim.o.showmatch   = true    -- highlight matching parentheses

-- lines
vim.o.breakindent = true    -- wrapped lines will preserve their indentation
vim.o.linebreak   = true    -- when wrapping long lines break at better characters
vim.o.wrap        = true    -- wrap long lines

-- gui
vim.o.number      = true    -- show line numbers
vim.o.showcmd     = true    -- show command in bottom bar
vim.o.wildmenu    = true    -- command-line completion in enhanced mode
vim.o.lazyredraw  = true    -- screen is not redrawn when activation macros

-- colors
vim.o.termguicolors = true
vim.o.background    = 'dark'
vim.cmd([[ colorscheme gruvbox ]])

