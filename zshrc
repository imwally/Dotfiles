# name on host in curdir 
PROMPT='%B%n%b on %B%m%b in %B%~%b '

# set TERM=xterm-256color for proper white in tmux
TERM=screen-256color
export TERM

# sane ls sortin
export LC_ALL=C

# aliases
alias l="ls -l"
alias ll="ls -laF"
alias ik="open -a /Volumes/IronKey/IronKey.app"

# little programs
pkg_find() { 
	curl -s ftp://ftp.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/ \
	| grep -i "$*" | awk '{print $9}'; 
}

# Go
export GOPATH=$HOME/Code/go/
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:$HOME/Apps/bin

# PKG_PATH
PKG_PATH=ftp://ftp.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/
export PKG_PATH

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
HISTSIZE=500
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
