#!/usr/bin/bash

if [ ! -f up-to-date-flag.txt ]; then
    if [ ! -f currently-clean-flag.txt ]; then
        git merge
        git submodule foreach 'git merge || true'
        ./pip-install-develop.sh --no-dependencies
        pushd wield-doc
        make fullclean
        popd
        touch currently-clean-flag.txt
    fi
    pushd wield-doc
    make complete && touch ../up-to-date-flag.txt
    popd
fi
