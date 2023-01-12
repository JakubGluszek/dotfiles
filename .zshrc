# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# golang
export PATH=$PATH:/usr/local/go/bin

export EDITOR=nvim

ZSH_THEME="robbyrussell"

plugins=(
  git 
  autojump 
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#9a9a9a"

alias dotfiles=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME

alias r="ranger"
alias randwall="~/bin/randwall.sh"
alias vi="nvim"
alias explore="nautilus . & disown"

source $ZSH/oh-my-zsh.sh
