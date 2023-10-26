#!/usr/bin/bash

if [ ! -f up-to-date-flag.txt ]; then
    git pull
    git submodule foreach 'git pull'
    ./pip-install-develop.sh --no-dependencies
    pushd wield-doc
    make fullclean
    make complete && touch ../up-to-date-flag.txt
    popd
fi
