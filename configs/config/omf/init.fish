if test -d $HOME/.rbenv/bin
    set PATH $HOME.rbenv/bin $PATH
end

set PATH /usr/local/sbin $PATH

if test -d $HOME/bin
    set PATH $HOME/bin $PATH
end

if test -d $HOME/src/github.com/golang/go/bin
    set PATH $HOME/src/github.com/golang/go/bin $PATH
end
