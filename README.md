Vim Setup Tutor
===============

> This tutor is tested on Debian, it should work on Ubuntu.

## install vim (+python)

    apt install vim-nox
    vim --version | grep +python

# create ~/.vim

    git clone https://github.com/tpope/vim-pathogen.git ~/.vim
    cd ~/.vim
    git mv *.markdown autoload

# create vimrc

    cat >> vimrc << _EOF_
    set nu
    set et sw=4

    execute pathogen#infect()
    syntax on
    filetype plugin indent on

    set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
    _EOF_

# install plugins

    git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
    git submodule add https://github.com/tpope/vim-surround.git bundle/surround
    git submodule add https://github.com/tpope/vim-repeat.git bundle/repeat
    git submodule add https://github.com/tpope/vim-unimpaired.git bundle/unimpaired
    git submodule add https://github.com/tpope/vim-sensible.git bundle/sensible
    git submodule add https://github.com/powerline/powerline.git bundle/powerline

# config fonts

    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mkdir -p ~/.fonts/ ~/.config/fontconfig/conf.d/
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# push to github

    git remote add github git@github.com:vimagick/.vim.git
    git add .
    git commit -m 'init commit'
    git push -u github master

