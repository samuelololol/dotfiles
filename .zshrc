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


export PATH=$PATH:/usr/local/bin
ZSH=$HOME/dotfiles/.zsh
#export ZSH_THEME="miloshadzic"
#export ZSH_THEME="norm"
#export ZSH_THEME="funky"
#export ZSH_THEME="dogenpunk"
export ZSH_THEME="jreese"

# zsh plugin settings
# --------------------------------------------
plugins=(git vim github svn brew osx)


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
alias tmux='DISPLAY=:0.0 TERM=screen-256color tmux -2'
alias screen='DISPLAY=:0.0 TERM=xterm-256color screen'

source $HOME/dotfiles/.mypyrc
source $HOME/dotfiles/.mynoderc

[[ -s "$HOME/dotfiles/.myenvvar"  ]] && source "$HOME/dotfiles/.myenvvar" 
