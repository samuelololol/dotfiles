#
# Samuel's .zshrc config file
#
#          2013, 08/14 @Taipei
#                                                                      ___           ___
#                                           ___           ___         /\_ \         /\_ \ (R)
#  sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
#    ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
#   /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
#  /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
#  \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
#   \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com
#
#


ZSH=$HOME/dotfiles/.zsh
#export ZSH_THEME="miloshadzic"
#export ZSH_THEME="norm"
#export ZSH_THEME="funky"
#export ZSH_THEME="dogenpunk"
#export ZSH_THEME="jreese"
export ZSH_THEME="crunch"

# zsh plugin settings
# --------------------------------------------

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    echo "using ZSH on Linux"
    platform='Linux'
    plugins=(git vim tmux docker docker-compose zsh-navigation-tools vagrant)
    export SCIPY_PIL_IMAGE_VIEWER=gqview
elif [[ "$unamestr" == 'Darwin' ]]; then
    echo "using ZSH on OS X"
    export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/opt/python/libexec/bin:$PATH"  # homebrew
    platform='Darwin'
    plugins=(git vim tmux docker docker-compose zsh-navigation-tools osx vagrant)
fi
#plugins=(git vim github svn brew osx npm nvm node yum tmux virtualenv virtualenvwrapper)
#plugins=(git vim github geeknote svn brew osx npm nvm node virtualenv virtualenvwrapper yum tmux docker docker-compose zsh-navigation-tools web-search)
#[[ -s "/usr/bin/virtualenvwrapper.sh"  ]] &&\
#    plugins=(git vim github geeknote svn brew osx npm nvm node yum tmux docker docker-compose virtualenvwrapper)

#PATH environment variable
#[[ -d "$HOME/commands" ]] && export PATH="$HOME/commands/bin:$HOME/commands:/usr/local/bin:/usr/local/sbin:$PATH"


echo "Loading oh-my-zsh settings...."
source $ZSH/oh-my-zsh.sh
#website:   http://mimosa-pudica.net/zsh-incremental.html
#file link: http://mimosa-pudica.net/src/incr-0.2.zsh
#source ~/dotfiles/incr-0.2.zsh


# alias commands
alias ll='ls -l'
alias l='ll'
alias la='l -a'
alias lh='l -h'
alias sl='ls'
export LC_CTYPE="zh_TW.UTF-8"

# terminal color issue
#export TERM=screen-256color
#export TERM=xterm
#alias tmux='DISPLAY=:0.0 TERM=screen-256color tmux -2'
alias tmux='DISPLAY=:0.0 tmux -2'
alias screen='DISPLAY=:0.0 TERM=xterm-256color screen'

#my zsh_completion
fpath=($HOME/dotfiles/zsh_completion $fpath)
autoload -U compinit
compinit


# keymap
# https://wiki.archlinux.org/index.php/Zsh#Key_bindings
[[ -s "$HOME/dotfiles/.myenvvar"  ]] && source "$HOME/dotfiles/.myenvvar"

# nvm, rvm, virtualenv
#source $HOME/dotfiles/samuel_py_rc
#source $HOME/dotfiles/samuel_node_rc
#source $HOME/dotfiles/samuel_ruby_rc
#echo ""
[[ -s "/usr/bin/screenfetch"  ]] && screenfetch
[[ -s "/usr/local/bin/neofetch" ]] && neofetch

#source personal rc setting with gitignored file
[[ -s "$HOME/dotfiles/samuel_zshrc" ]] && source $HOME/dotfiles/samuel_zshrc

# vim original: /usr/local/bin/vim
# (The following settings could be moved to $HOME/dotfiles/samuel_zshrc,
#  which is already ignored from git repo for customization)
#
#alias vim='/usr/local/bin/nvim'
