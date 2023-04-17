#!/usr/bin/bash


# log file
LOG_FILE="/tmp/fishing_time.log"

# directory where to copy the dotfiles
DOTFILES_DIR="$HOME/.config"



# path of the current script
__HERE__=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )



# initializing the log file
echo "fishing-time" >  $LOG_FILE
date                >> $LOG_FILE


# install fish and make it the default shell
chmod u+x ${__HERE__}/src/_setup_fish.bash
${__HERE__}/src/_setup_fish.bash ${LOG_FILE}

# import all the dotfiles
chmod u+x ${__HERE__}/src/_import_dotfiles.bash
${__HERE__}/src/_import_dotfiles.bash ${LOG_FILE} ${DOTFILES_DIR}
