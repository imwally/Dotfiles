# name on host in curdir 
PROMPT='%n@%m (%B%~%b) '

# term
export TERM=screen-256color

# sane ls sorting
alias ls='LC_COLLATE="C" ls'

# better man pages
alias man='TERM=xterm-256color man'

# mono mutt
alias mutt='TERM=vt100 mutt'

# go
export GOPATH=$HOME/Code/go

# npm
export NPMBIN=$HOME/.npm-global/bin

# my bin
export MYBIN=$HOME/Apps/bin

# bins
export PATH=$PATH:$MYBIN:$NPMBIN:$GOPATH/bin:/usr/local/go/bin

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit
