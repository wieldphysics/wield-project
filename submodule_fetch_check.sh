#!/usr/bin/bash

git fetch
git submodule foreach 'git fetch'

./git_check_uptodate.sh && git submodule foreach '$(realpath -m --relative-to=$displaypath .)/git_check_uptodate.sh'

retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Submodules not up to date"
    rm -rf up-to-date-flag.txt
fi
exit $retVal

