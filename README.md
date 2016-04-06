# vim-config

**DEPRECATED** in favor of [dotfiles](https://github.com/gautaz/dotfiles) with [neovim](https://neovim.io/)

A versioned container for my vim configuration.
This configuration is mainly targeted at Javascript, HTML, CSS and co.

## install

    cd <some-location>
    git clone --recursive https://github.com/gautaz/vim-config.git
	vim-config/install.sh

## Custom key mappings

The {leader} key is <kbd>space</kbd>.

In order to launch autoformat, use **{leader}f**.

## Useful commands and key mappings

* {leader}ig            : get indentation guides
* {leader}c{space}      : toggle comments
* {ctrl}x{ctrl}o        : starts vim omnicompletion (insert mode)
* Tabularize /{pattern} : see :help tabular
