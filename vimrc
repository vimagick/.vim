set nu
set et sw=4 sts=4
set cc=79
set hls
set bsk+=/private/tmp/*

let mapleader = ','
nnoremap <C-l>           gt
nnoremap <C-h>           gT
nnoremap <C-j>           <C-e>
nnoremap <C-k>           <C-y>
nnoremap <leader>w       <C-w>
nnoremap <leader>h       : wincmd h<CR>
nnoremap <leader>j       : wincmd j<CR>
nnoremap <leader>k       : wincmd k<CR>
nnoremap <leader>l       : wincmd l<CR>
nnoremap <leader>p       : wincmd p<CR>

aug XXX
    au!
    au QuickFixCmdPost *grep*   cwindow
    au FileType *               setl textwidth=0
    au FileType yaml            setl shiftwidth=2 softtabstop=2
    au FileType json            setl shiftwidth=2 softtabstop=2
    au FileType html            setl shiftwidth=2 softtabstop=2
    au FileType css             setl shiftwidth=2 softtabstop=2
    au FileType javascript      setl shiftwidth=2 softtabstop=2
aug END

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
