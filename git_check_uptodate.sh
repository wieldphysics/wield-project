#!/usr/bin/bash

set -e
SHAHEAD=$(git rev-parse HEAD)
SHAUPS=$(git rev-parse @{u})
if [[ $SHAHEAD == $SHAUPS ]]; then
    exit 0
else
    behind_count=$(git rev-list --count HEAD..@{u})
    ahead_count=$(git rev-list --count @{u}..HEAD)

    if [[ $behind_count > 0 ]]; then
        if [[ $ahead_count > 0 ]]; then
            echo "diverged: " "$(basename $(pwd))"
        else
            echo "Not up to date: " "$(basename $(pwd))"
        fi
        exit 1
    else
        if [[ $ahead_count > 0 ]]; then
            echo "ahead: " "$(basename $(pwd))"
        fi
        exit 0
    fi
fi
