# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# exports for third party tools

# exports for development

# aliases to log into various machines

# alias to mount/unmount directories from other machines

# do not use swapfiles to avoid stalling if a network filesystem is unresponsive
alias vim='vim -n'

# aliases for commands
alias ls='ls --color=auto'
alias ll='ls -alh'
alias ssh='ssh -X'
alias rsync='rsync -aHxv --numeric-ids --progress -e "ssh -T -c arcfour -o Compression=no -x"'

# some useful commands
mkpw () {
    openssl rand -base64 48
}

# export path updates
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:${PATH}
