# Go Bootstrap
if [ ! -d ~/go1.4 ]; then
    git clone -b release-branch.go1.4 --single-branch https://github.com/golang/go.git $HOME/go1.4
    cd $HOME/go1.4/src
    ./make.bash
fi
cd ~

ok github $HOME/src/github.com/golang/go golang/go --ssh

# This isn't great but I really only want bork to intall go when it's bootstrapping without go
ok check "$HOME/src/github.com/golang/go/bin/go version"
if check_failed; then
 cd $HOME/src/github.com/golang/go/src
 ./all.bash
fi