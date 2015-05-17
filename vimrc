set nu
set et sw=4 sts=4

if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16
endif

execute pathogen#infect()
syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

hi Visual cterm=none ctermbg=148
hi LineNr cterm=reverse ctermfg=252 ctermbg=240
