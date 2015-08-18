#!/bin/bash

# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode
if [ -z "$SSH_CLIENT" ]; then
  diffuse "$2" "$5" | cat
else
  echo "$1"
  diff "$2" "$5" | cat
fi
