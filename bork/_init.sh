ok check "fdesetup status | grep 'On'"
if check_failed; then
    echo "Filevault is not setup. Please enable filevault before continuing."
    open "/System/Library/PreferencePanels/Security.prefpane"
    exit 1
fi

ok directory "$HOME/.ssh"
ok check "[ -e $HOME/.ssh/*.pub ]"
if check_failed && satisfying; then
    echo "Please get your keys on this box"
    exit 1
fi

ok brew
ok brew git

ok directory "$HOME/src"
ok directory "$HOME/pkg"
ok directory "$HOME/bin"
ok directory "$HOME/tmp"

ok github $HOME/src/github.com/amerine/dotfiles amerine/dotfiles --ssh
cd ~
if [ -d "$HOME/src/github.com/amerine/dotfiles/configs" ]; then
    for config in $HOME/src/github.com/amerine/dotfiles/configs/*; do
        ok symlink ".$(basename $config)" $config
    done
fi


# Fish
# thanks mattly
ok brew fish
register types/shells.sh
ok shells /usr/local/bin/fish
# did_install && chsh -s /usr/local/bin/fish