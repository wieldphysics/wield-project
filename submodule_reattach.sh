#!/usr/bin/bash

git submodule foreach '$(realpath -m --relative-to=$displaypath .)/git-reattach.py'

retVal=$?
exit $retVal

