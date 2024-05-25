#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -alh --color=auto'
alias l='ls -lh --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export LC_ALL=sv_SE.UTF-8
eval "$(starship init bash)"
