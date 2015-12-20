#!/usr/bin/env bash

FILE_PROFILE=~/.bash_profile

# does the profile file exist?
if [ ! -f $FILE_PROFILE ]; then
    echo "Creating $FILE_PROFILE."
    echo "# BASH PROFILE" > $FILE_PROFILE
fi
