ZSH=$HOME/dotfiles/.zsh
export ZSH_THEME="miloshadzic"
# settings
# --------------------------------------------
plugins=(git vim github svn brew osx)

source $ZSH/oh-my-zsh.sh
#[[ -s $HOME/.rvm/scripts/rvm  ]] && source $HOME/.rvm/scripts/rvm


# alias
alias ll='ls -l'
alias l='ll'
alias la='l -a'
alias lh='l -h'
alias sl=ls # often screw this up
