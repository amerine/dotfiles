destination $HOME

for config in $HOME/code/amerine/dotfiles/configs/*; do
  ok symlink "$HOME/.$(basename $config)" $config
done
