include osx.sh

## Homebrew
ok brew

## Dotfiles
include dotfiles.sh

## Git
ok brew git

## mercurial
ok brew hg

## Basics
ok brew readline
ok brew bcrypt
ok brew openssl

## More Git Tools
ok brew hub
ok brew tig

## Python
## may require some fuckery when done.
ok brew python
ok pip virtualenv

## Vim
include vim.sh

## Tools
ok brew ack
ok brew par
ok brew tree
ok brew watch
ok brew nmap
ok brew colordiff
ok brew tarsnap
ok brew curl
ok brew mtr
ok brew dnsmasq

## httpie
ok pip httpie

## apps
include apps.sh

## ssh
ok directory "$HOME/.ssh"
ok check "[ -e $HOME/.ssh/*.pub ]"
if check_failed; then
  echo "get yo key"
fi

ok check "[ -e $HOME/.ssh/config ]"
if check_failed; then
  echo "copy .ssh/config file from 1password"
fi

## Bin
ok directory $HOME/bin
destination $HOME/bin
for app in $HOME/code/amerine/dotfiles/bin/*; do
  ok symlink "$HOME/bin/$(basename $app)" $app
done

## aliases
ok directory $HOME/.aliases

## go
include go.sh
