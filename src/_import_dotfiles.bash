#!/usr/bin/env bash


# log file
LOG_FILE="$1"

# directory where to copy the dotfiles
DOTFILES_DIR="$2"



# path of the current script
declare -r __HERE__=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# logging
echo -e "\n\n\nCOPYING DOTFILES"                >>  $LOG_FILE

# copying dotfiles
mkdir -p $DOTFILES_DIR                          2>> $LOG_FILE
cp -r $__HERE__/../dotfiles/* $DOTFILES_DIR     2>> $LOG_FILE
chmod u+rwx -R $DOTFILES_DIR                    2>> $LOG_FILE
