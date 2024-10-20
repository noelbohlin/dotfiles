# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[\w \$(ls | wc -l)]\$ "

alias ls='ls -lA --color=auto'
alias fetch='fastfetch'
alias search='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
alias vimsearch='vim $(fzf --preview "bat --color=always --style=numbers --line-range=:500 {}")'

eval "$(fzf --bash)"
  
fastfetch
