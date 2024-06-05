#
# ~/.bashrc
#

export EDITOR=vim
export SYSTEMD_EDITOR=vim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='lsd -alh --color=auto'
alias l='lsd -lh --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
#export LC_ALL=sv_SE.UTF-8
export LC_ALL=en_US.UTF-8
eval "$(starship init bash)"

#Mina functions

#Function för att curla cheat.sh
function cheat() {
curl cheat.sh/$1
}
export -f cheat

#Function för paste.rs
function pasters() {
local file=${1:-/dev/stdin}
curl --data-binary @${file} https://paste.rs
}
