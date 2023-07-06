#!/bin/bash

# print all the available commands for the current shell

# get all commands raw
CMDS=$`compgen -c`
FILTER=$1

# DELS=(".exe" ".EXE" ".DLL" ".dll" ".py" ".pyw")

# iterate over each command
while IFS= read -r line || [[ -n $line ]]; do
    # filter out extensions
    # for i in "${DELS[@]}"; do
    if [[ $line == *"."* ]] || [[ $line != *"$FILTER"* ]]; then
        continue
    fi
    echo "$line"
done < <(printf '%s' "$CMDS")