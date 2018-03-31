# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# shell colors
export CLICOLOR=1
export LS_COLORS='di=94:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

# exports for third party tools

# exports for development

# aliases to log into various machines

# alias to mount/unmount directories from other machines

# do not use swapfiles to avoid stalling if a network filesystem is unresponsive
alias vim='vim -n'

# aliases for commands
alias ll='ls -alh'
alias ssh='ssh -X'
alias rsync='rsync -aHxv --numeric-ids --progress -e "ssh -T -c arcfour -o Compression=no -x"'

# some useful commands
mkpw () {
    openssl rand -base64 48
}

# system-specific initialization
if [ $(uname -a | grep -c "Linux") == 1 ]; then
    eval `dircolors`
    alias ls='ls --color=auto'
else
    # screams internally
    alias ls='gls --color=auto'
    alias vi='vim'
    alias wget='wget --no-check-certificate'
    export PS1='[\u@\h \W]\$ '
fi

# export path updates
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:${PATH}
