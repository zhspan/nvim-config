
" Plugins
" Automatically download vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Functional
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/junegunn/goyo.vim'
" Plug 'https://github.com/vim-scripts/taglist.vim'
Plug 'https://github.com/tpope/vim-surround'
" Plug 'https://github.com/Valloric/YouCompleteMe'

" Graphical
" Plug 'https://github.com/vim-scripts/scrollfix'
Plug 'https://github.com/godlygeek/csapprox'
Plug 'https://github.com/Konfekt/FastFold'
Plug 'https://github.com/tmhedberg/SimpylFold'

" Colors
Plug 'https://github.com/HenryNewcomer/vim-theme-papaya'
Plug 'https://github.com/saalaa/ancient-colors.vim'
Plug 'https://github.com/gosukiwi/vim-atom-dark'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/Lokaltog/vim-distinguished'
Plug 'https://github.com/sjl/badwolf'

" Initialize plugin system
call plug#end()

" End of plugins
