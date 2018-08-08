" Switch Schemes with Goyo
function! s:goyo_enter()
    source ~/.vim/rc/goyo_ui.vim
endfunction
function! s:goyo_leave()
    source ~/.vim/rc/default_ui.vim
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
