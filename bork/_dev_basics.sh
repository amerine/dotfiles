ok brew readline
ok brew bcrypt
ok brew openssl
ok brew hub
ok brew httpie


ok directory $HOME/bin
cd $HOME/bin
for app in $HOME/src/github.com/amerine/dotfiles/bin/*; do
  ok symlink "$HOME/bin/$(basename $app)" $app
done
cd ~

ok directory $HOME/.aliases

include _vim.sh