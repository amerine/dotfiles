function _print_cloud
  if test -n $HEROKU_CLOUD
    echo "HEROKU_CLOUD => $HEROKU_CLOUD"
  end
  if test -n $ION_HOST
    echo "ION_HOST => $ION_HOST"
  end
  if test -n $HEROKU_HOST
    echo "HEROKU_HOST => $HEROKU_HOST"
  end
  if test -n $HEROKU_API_URL
    echo "HEROKU_API_URL => $HEROKU_API_URL"
  end
  if test -n $HEROKU_STATUS_HOST
    echo "HEROKU_STATUS_HOST => $HEROKU_STATUS_HOST"
  end
  if test -n $USE_PUBLIC_IP
     echo "USE_PUBLIC_IP => $USE_PUBLIC_IP"
  end
  if test -n $HEROKU_APPDOMAIN
    echo "HEROKU_APPDOMAIN => $HEROKU_APPDOMAIN"
  end

  return 0
end

function cloud
  set cloud $argv
  set -g -e ION_HOST
  set -g -e ION_DOMAIN
  set -g -e HEROKU_HOST
  set -g -e HEROKU_API_URL
  set -g -e HEROKU_STATUS_HOST
  set -g -e USE_PUBLIC_IP
  set -g -e HEROKU_APPDOMAIN

  set -g -x HEROKU_CLOUD $cloud

  switch $cloud
    case default production prod
      set -g -x HEROKU_CLOUD production
      set -g -x HEROKU_APPDOMAIN herokuapp.com
    case ops
      set -g -x ION_HOST ion-ops.herokai.com
      set -g -x HEROKU_HOST ops.herokai.com
    case staging
      set -g -x ION_HOST ion-staging.herokai.com
      set -g -x HEROKU_HOST staging.herokudev.com
      set -g -x HEROKU_APPDOMAIN staging.herokuappdev.com
    case eu-west-1-a eu
      set -g -x HEROKU_CLOUD eu-west-1-a
      set -g -x ION_HOST ion-eu-west-1-a.herokai.com
    case us-west-2 us-west
      set -g -x ION_HOST ion-us-west-2.herokai.com
      set -g -x HEROKU_HOST us-west-2.herokudev.com
    case '*'
      set -g -x ION_HOST ion-$cloud.herokuapp.com
      set -g -x HEROKU_HOST $cloud.herokuapp.com
      set -g -x HEROKU_STATUS_HOST status-$cloud.herokuapp.com
  end

  if test -n $ION_HOST
    set -g -x ION_DOMAIN $ION_HOST
  end

  if test -n $HEROKU_HOST
    set -g -x HEROKU_API_URL https://api.$HEROKU_HOST
  end

  _print_cloud
end
