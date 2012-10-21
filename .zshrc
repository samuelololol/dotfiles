export PATH=$PATH:/usr/local/bin
ZSH=$HOME/dotfiles/.zsh
#export ZSH_THEME="miloshadzic"
#export ZSH_THEME="norm"
#export ZSH_THEME="funky"
#export ZSH_THEME="dogenpunk"
export ZSH_THEME="jreese"

# settings
# --------------------------------------------
plugins=(git vim github svn brew osx)

source $ZSH/oh-my-zsh.sh

# alias
alias ll='ls -l'
alias l='ll'
alias la='l -a'
alias lh='l -h'
alias sl='ls'
alias tmux='tmux -2'
export LC_CTYPE=zh_TW.utf8
