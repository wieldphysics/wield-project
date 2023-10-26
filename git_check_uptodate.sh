#!/usr/bin/bash

set -e
SHAHEAD=$(git rev-parse HEAD)
SHAUPS=$(git rev-parse @{u})
if [[ $SHAHEAD == $SHAUPS ]]; then
    exit 0
else
    exit 1
fi
