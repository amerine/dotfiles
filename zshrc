# OH MY ZSH STUFF BELOW
ZSH=$HOME/.oh-my-zsh
unsetopt correct_all
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

unset MAILCHECK
ulimit -S -c 0
umask 0022

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export EDITOR="mvim -f"
export DEFAULT_USER="amerine"

export GOPATH=$HOME/mygo
export GOROOT=$HOME/code/go
export PATH=$PATH:$HOME/mygo/bin
export PATH=/Users/amerine/code/go/bin:$PATH
export HISTSIZE=50000
export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"

export VIRTUALENV_DISTRIBUTE=true
export PIP_VIRTUALENV_BASE=$HOME/.virtualenvs
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

alias be="nocorrect bundle exec"
alias http="nocorrect http"
alias keystone="nocorrect keystone"

if which hub > /dev/null; then eval "$(hub alias -s)"; fi

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
