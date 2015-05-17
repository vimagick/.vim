set nu
set et sw=4 sts=4

execute pathogen#infect()
syntax on
filetype plugin indent on

if has('gui_running')
    set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h16
    set bg=light
    color solarized
endif

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

hi Visual cterm=none ctermbg=148
hi LineNr cterm=reverse ctermfg=252 ctermbg=240
