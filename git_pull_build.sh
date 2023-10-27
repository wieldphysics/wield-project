#!/usr/bin/bash

if [ ! -f up-to-date-flag.txt ]; then
    git pull
    git submodule foreach 'git pull'
    ./pip-install-develop.sh --no-dependencies
    if [ ! -f currently-clean-flag.txt ]; then
        pushd wield-doc
        make fullclean
        popd
    fi
    pushd wield-doc
    make complete && touch ../up-to-date-flag.txt
    popd
fi
