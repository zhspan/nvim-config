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
    use 'tpope/vim-fugitive'
    use 'junegunn/goyo.vim'
    use 'vim-scripts/taglist.vim'
    use 'tpope/vim-surround'

    -- Graphical
    use 'godlygeek/csapprox'
    use 'Konfekt/FastFold'
    use 'tmhedberg/SimpylFold'

    -- Colorscheme
    use 'HenryNewcomer/vim-theme-papaya'
    use 'saalaa/ancient-colors.vim'
    use 'gosukiwi/vim-atom-dark'
    use 'NLKNguyen/papercolor-theme'
    use 'morhetz/gruvbox'
    use 'Lokaltog/vim-distinguished'
    use 'sjl/badwolf'

    if packer_bootstrapped then
      require('packer').sync()
    end
  end
)
