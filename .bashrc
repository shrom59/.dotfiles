#
# ~/.bashrc
#

export TERM='xterm-256color'
export SSHPORT='XXXX'
export SSHSRV='usr@XXXX'
export DLSRV='user@XXXX'


# When using sudo, use alias expansion (otherwise sudo ignores your aliases)
alias sudo='sudo -E '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
 
alias ls='ls --color=auto'
PS1="\[$(tput setaf 6)\][\u@\h \W]\\$\[$(tput sgr0)\] "

#Autocompletion in Sudo
complete -cf sudo

#replace vim with nvim
alias vim="nvim"

#Load Openstack Vars
alias pci="source ~/scripts/openrc.sh"

#SSH aliases
alias maze="ssh -p $SSHPORT $SSHSRV"
alias dl='ssh -t $SSHSRV  -p $SSHPORT "ssh $DLSRV  -p $SSHPORT"'

#Backup VM alias
alias bak="~/scripts/vmback.sh Lowe"

#exec archey3 when open terminal
archey3
