# ~/.zshrc

[[ $- != *i* ]] && return

if [[ "$(uname)" == "Darwin" ]]; then
  alias ls='ls -F -G'
  alias sl='ls -F -G'
  alias ll='ls -l -G'
  alias la='ls -la -G'
else
  export LS_COLORS="di=1"
  alias ls='ls -F --color=auto'
  alias sl='ls -F --color=auto'
  alias ll='ls -l --color=auto'
  alias la='ls -la --color=auto'
fi

alias grep='grep --color=auto'
alias vi='vim'
alias vmi='vim'

EDITOR=vim
export EDITOR

PS1='[dcr@ %~] '
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
