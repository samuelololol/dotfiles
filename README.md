                                                                        ___           ___
                                             ___           ___         /\_ \         /\_ \ (R)
    sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
      ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
     /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
    /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
    \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
     \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com

#Samuel's Dot Files

This is an repository of the setting files and plugins for some tools.


## PREPARASION

### .bashrc, .zshrc

```
export TERM=xterm
#enable 256color for terminal multiplexs
alias tmux='TERM=xterm-256color tmux -2'
alias screen='TERM=xterm-256color screen'
```

for zsh
```
# rm ~/.zshrc   && ln -s dotfiles/.zshrc ~/.zshrc
# rm ~/.zsh -rf && ln -s dotfiles/.zsh   ~/.zsh
```

### vim, neovim

```
#vim

$cd
$rm ~/.vimrc && ln -s ~/dotfiles/.vimrc ~/.vimrc
$rm ~/.vim -rf && ln -s dotfiles/.vim   ~/.vim

#nvim

$ ln -s ~/dotfiles/.vimrc ~/dotfiles/.vim/init.vim
$ ln -s ~/dotfiles/.vim ~/.config/nvim
```

# plugins

# zsh

* https://github.com/robbyrussell/oh-my-zsh.git

## for vim

* https://github.com/vim-scripts/Auto-Pairs
* https://github.com/vim-scripts/DoxygenToolkit.vim.git
* https://github.com/kien/ctrlp.vim.git
* https://github.com/vim-scripts/matchit.zip.git
* https://github.com/scrooloose/nerdtree.git
* https://github.com/sotte/presenting.vim.git
* https://github.com/vim-scripts/surround.vim.git
* https://github.com/majutsushi/tagbar.git
* https://github.com/vim-scripts/TaskList.vim.git
* https://github.com/vim-scripts/valgrind.vim.git
* https://github.com/junegunn/vim-easy-align
* https://github.com/Lokaltog/vim-easymotion.git
* https://github.com/chrisbra/vim-diff-enhanced.git
* https://github.com/tpope/vim-fugitive
* https://github.com/tpope/vim-pathogen.git
* https://github.com/airblade/vim-gitgutter.git
* https://github.com/elzr/vim-json/
* https://github.com/terryma/vim-multiple-cursors.git
* https://github.com/fatih/vim-go.git
* https://github.com/Valloric/YouCompleteMe.git
* https://github.com/rdnetto/YCM-Generator
* https://github.com/Xuyuanp/nerdtree-git-plugin
* https://github.com/IngoHeimbach/vim-indent-object
* https://github.com/jceb/vim-hier
* https://github.com/sk1418/QFGrep
* https://github.com/yssl/QFEnter
* https://github.com/nvie/vim-flake8
