# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/nikhilreddydev/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# stop terminal to freeze
stty -ixon

. ~/.git-prompt.sh
autoload -U colors && colors
precmd () {  __git_ps1 "%{${fg[cyan]}%}%2~%{$reset_color%}" " %(?.😀 .%(!..😔) " " [%s]" }
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

# source aliases
source ~/.zsh_aliases

# source functions
source ~/.zsh_functions.sh

# source less colors
source ~/.less_termcap

# env variables
export EDITOR=vim
export LESS=-R
export PS1
