-- load nvim plugins

-- make sure packer is installed
-- requires git
local packer_bootstrap = function()
  local pack_dir = vim.fn.stdpath('data') .. '/site/pack'
  local packer_dir = pack_dir .. '/packer/start/packer.nvim'
  -- check for packer install by checking for the existence of packer_dir
  local ok, err = os.rename(packer_dir, packer_dir)
  if ok ~= true then
    -- install packer
    local git_cmd = 'git clone --depth 1 https://github.com/wbthomason/packer.nvim ' .. packer_dir
    local handle = io.popen(git_cmd)
    handle:close()
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrapped = packer_bootstrap()

-- Load plugins using packer
return require('packer').startup(
  function(use)
    use 'wbthomason/packer.nvim'

    -- Functional
    use 'https://github.com/tpope/vim-fugitive'
    use 'https://github.com/junegunn/goyo.vim'
    use 'https://github.com/vim-scripts/taglist.vim'
    use 'https://github.com/tpope/vim-surround'

    -- Graphical
    use 'https://github.com/godlygeek/csapprox'
    use 'https://github.com/Konfekt/FastFold'
    use 'https://github.com/tmhedberg/SimpylFold'

    -- Colorscheme
    use 'https://github.com/HenryNewcomer/vim-theme-papaya'
    use 'https://github.com/saalaa/ancient-colors.vim'
    use 'https://github.com/gosukiwi/vim-atom-dark'
    use 'https://github.com/NLKNguyen/papercolor-theme'
    use 'https://github.com/morhetz/gruvbox'
    use 'https://github.com/Lokaltog/vim-distinguished'
    use 'https://github.com/sjl/badwolf'

    if packer_bootstrapped then
      require('packer').sync()
    end
  end
)
