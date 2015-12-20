#!/usr/bin/env bash

FILE_PROFILE=~/.bash_profile
FILE_ALIASES=~/.bash_aliases

FILE_ALIASES_STR="~/.bash_aliases"

echo "Installing $FILE_ALIASES_STR..."

# does the profile file exist?
if [ ! -f $FILE_PROFILE ]; then
    echo "Creating $FILE_PROFILE."
    touch $FILE_PROFILE
fi

# add the aliase file to the profile
if ! grep --quiet $FILE_ALIASES_STR $FILE_PROFILE; then
    sed -i "1i# Bash Aliases\n. $FILE_ALIASES_STR\n" $FILE_PROFILE
    echo "Added the aliases to your bash profile."
else
    echo "The aliases are already linked into your bash profile."
fi

# include the aliases right now
. $FILE_ALIASES
