#!/usr/bin/env bash

FILE_PROFILE=~/.bash_profile
FILE_CONFIG=~/.bash_config

FILE_CONFIG_STR="~/.bash_config"

echo "Installing $FILE_CONFIG_STR..."

# add the config file to the profile
if ! grep --quiet $FILE_CONFIG_STR $FILE_PROFILE; then
    sed -i "1i# Bash Config\n. $FILE_CONFIG_STR\n" $FILE_PROFILE
    echo "Added the config to your bash profile."
else
    echo "The config is already linked into your bash profile."
fi

# include the aliases right now
source $FILE_CONFIG
