# STOLEN FROM: https://github.com/mattly/dotfiles/blob/master/bork/types/shells.sh 
# Thanks mattly
action=$1
shell=$2
shift 2

case $action in
    status)
        bake cat /etc/shells | grep "$shell"
        [ "$?" -gt 0 ] && return $STATUS_MISSING
        return $STATUS_OK
    ;;

    install|upgrade)
        bake echo "$shell" | sudo tee -a /etc/shells
    ;;

    *) return 1 ;;
esac