" Default vimrc settings, colors, etc
" Default settings

imap jk <Esc>
syntax enable

" Display
set wrap
set linebreak

" Colors
set t_Co=256

" Spaces and Tabs
set tabstop=2		" Visual Spaces for a tab
set expandtab		" tabs are spaces
set softtabstop=2	" Number of spaces per tab
set shiftwidth=2 " Number of spaces for autoindent
set nocindent     " Turn off c indent
set autoindent    " Turn on autoindent
set nosmartindent  " Turn off smartindent

" UI
set showcmd
set wildmenu		" Visual autocomplete for command menu
set lazyredraw		" Only redraws when needed

" Search
set incsearch		" Search as characters are entered
set hlsearch		" highlight matches
nnoremap <leader> <space> :nohlsearch<CR>	" Turn off search highlight
nnoremap <silent> <F8> :TlistToggle<CR> " Tag List

" Folding
nnoremap <space> za	" Space open/closes folds
set foldlevel=99    " Start with all folds disabled

" Movement
nnoremap gV `[v`]	" highlight last inserted text
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')   " Move graphically by default
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')   " Move graphically by default

" Leader Shortcuts
let mapleader=","	"Leader is comma

" Plugins
" Scrollfix
" let g:scrollinfo=0
" let g:loaded_youcompleteme=1
