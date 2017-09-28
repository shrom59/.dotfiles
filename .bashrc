#
# ~/.bashrc
#

export TERM='xterm-256color'

# When using sudo, use alias expansion (otherwise sudo ignores your aliases)
alias sudo='sudo '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\[$(tput setaf 6)\][\u@\h \W]\\$\[$(tput sgr0)\] "

#Autocompletion in Sudo
complete -cf sudo

#replace vim with nvim
alias vim="sudo nvim"

#Load Openstack Vars
alias pci="source ~/scripts/openrc.sh"

#alias fir git
alias commit="cd / && sudo git commit -am 'Adding files' && cd -"
alias push="cd / && sudo git push configs master && cd -"

#exec archey3 when open terminal
archey3
