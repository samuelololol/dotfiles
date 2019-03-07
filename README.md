                                                                        ___           ___
                                             ___           ___         /\_ \         /\_ \ (R)
    sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
      ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
     /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
    /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
    \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
     \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com

#Samuel's Dot Files

This is a repository of the setting files and plugins for some tools.


## apps

The listed apps are optional, choosing only needed

* git
* zsh
* vim 8 or neovim
* python-2.7
* tmux
* screen
* universal-ctags, exuberant-ctags or ctags
* the silver searcher, ag
* cscope
* Doxygen
* valgrind
* gdb


## PREPARASIONS

### TERM settings

```
export TERM=xterm
#enable 256color for terminal multiplexs
alias tmux='TERM=xterm-256color tmux -2'
alias screen='TERM=xterm-256color screen'
```

### for zsh
```
# rm ~/.zshrc   && ln -s dotfiles/.zshrc ~/.zshrc
# rm -rf ~/.zsh && ln -s dotfiles/.zsh   ~/.zsh
```

### for python flake8
```
# ln -s ~/dotfiles/flake8 ~/.config/flake8
```

### for vim, neovim

```
#vim

$cd
$rm ~/.vimrc && ln -s ~/dotfiles/.vimrc ~/.vimrc
$rm -rf ~/.vim && ln -s dotfiles/.vim   ~/.vim

#nvim

$ ln -s ~/dotfiles/.vimrc ~/dotfiles/.vim/init.vim (already linked in repository)
$ ln -s ~/dotfiles/.vim ~/.config/nvim
```

### for gdb

```
$ cd ~
$ ln -s dotfiles/gdb/gdb-dashboard/.gdbinit
```

# plugins

# zsh

* https://github.com/robbyrussell/oh-my-zsh.git

## for vim

* https://github.com/skywind3000/asyncrun.vim
* https://github.com/jiangmiao/auto-pairs
* https://github.com/ekalinin/Dockerfile.vim
* https://github.com/go2null/Mark--Karkat
* https://github.com/vim-scripts/matchit.zip.git
* https://github.com/scrooloose/nerdcommenter
* https://github.com/Xuyuanp/nerdtree-git-plugin
* https://github.com/scrooloose/nerdtree.git
* https://github.com/yssl/QFEnter
* https://github.com/sk1418/QFGrep
* https://github.com/vim-scripts/surround.vim.git
* https://github.com/majutsushi/tagbar.git
* https://github.com/vim-scripts/TaskList.vim.git
* https://github.com/vim-scripts/valgrind.vim.git
* https://github.com/jeetsukumaran/vim-buffergator
* https://github.com/chrisbra/vim-diff-enhanced.git
* https://github.com/junegunn/vim-easy-align
* https://github.com/tpope/vim-fugitive
* https://github.com/airblade/vim-gitgutter.git
* https://github.com/rr-/vim-hexdec
* https://github.com/jceb/vim-hier
* https://github.com/elzr/vim-json
* https://github.com/terryma/vim-multiple-cursors.git
* https://github.com/tpope/vim-pathogen.git
* https://github.com/rdnetto/YCM-Generator
* https://github.com/Valloric/YouCompleteMe.git

(not in `.vim/pack/original` package)

* https://github.com/vivien/vim-linux-coding-style

----

## alias for submodules

```
$ git config alias.spull "submodule update --init --recursive --checkout --force"
```
