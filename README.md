# vim-config

A versioned container for my vim configuration.
This configuration is mainly targeted at Javascript, HTML, CSS and co.

## install

    cd <some-location>
    git clone --recursive https://github.com/gautaz/vim-config.git
    cd vim-config/bundle/tern_for_vim
    npm install
    cd
    ln -s <some-location>/vim-config/vim .vim
    ln -s <some-location>/vim-config/vimrc .vimrc

To ensure bundles' help pages availability, execute this command from vim:

    :Helptags

## helper programs

In order for syntastic to report Javascript syntax errors, JSHint is needed:

    npm install -g jshint

In order to beautify Javascript source code through vim-autoformat, js-beautify is needed:

    npm install -g js-beautify

## Custom key mappings

The {leader} key is comma (**,**).

In order to launch autoformat, use **{leader}f**.

## Useful commands and key mappings

* {leader}ig            : get indentation guides
* {leader}c{space}      : toggle comments
* {ctrl}x{ctrl}o        : starts vim omnicompletion (insert mode)
* Tabularize /{pattern} : see :help tabular
