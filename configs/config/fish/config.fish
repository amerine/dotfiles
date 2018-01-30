# -- PATH
if status --is-login
  function unshift_path
    for val in $argv
      if test -d $val
        set -xg PATH $val $PATH
      end
    end
  end

  unshift_path /bin /sbin
  unshift_path /usr/bin /usr/sbin
  unshift_path /usr/local/bin /usr/local/sbin

  unshift_path $HOME/.bin

  if test -d $HOME/.rbenv
    unshift_path $HOME/.rbenv/shims
    rbenv rehash >/dev/null ^&1
  end

  if test -d $HOME/.bin
    unshift_path $HOME/.bin
  end

  if test -d $HOME/mygo
    set -xg GOPATH "$HOME/mygo"
    unshift_path "$HOME/mygo/bin"
  end

  if which thefuck >/dev/null
    function fuck
      eval (thefuck $history[1])
    end
  end

  if which ion-client >/dev/null
    function cloud
      eval ion-client shell
      cloud $argv
    end
  end
end

# -- ENV
set -xg EDITOR "vim"
set -xg BROWSER "open"

# -- HOST SPECIFIC
if test -e "$HOME/.env"
  . ~/.env
end

# -- DISH THE FISH
set -x CLICOLOR 1

if which direnv
  eval (direnv hook fish)
end