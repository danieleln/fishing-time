#!/usr/bin/env bash


# log file
LOG_FILE="$1"


# checking if the fish shell is already installed
if which fish > /dev/null; then

    # fish is already installed
    echo -e "\n\n\nFISH SHELL IS ALREADY INSTALLED."        >>  $LOG_FILE
    echo -e "NO NEED TO INSTALL IT."                        >>  $LOG_FILE

else
    # installing fish
    echo "INSTALLING FISH SHELL"
    echo -e "\n\n\nINSTALLING FISH SHELL"                   2>> $LOG_FILE
    sudo apt-add-repository ppa:fish-shell/release-3 -y     2>> $LOG_FILE
    sudo apt update                                         2>> $LOG_FILE
    sudo apt install fish -y                                2>> $LOG_FILE


    # verifying if fish has been installed correctly
    if ! which fish > /dev/null; then
        echo "Something went wrong during the installation of the fish shell."
        echo "Please refer to the log file \"$LOG_FILE\""
        exit 1
    fi
fi





# changing default shell to fish
if [ "$SHELL" != "$(which fish)" ]; then
    echo "Enter your password to change the default shell to fish:"
    echo -e "\n\n\nCHANGING DEFAULT SHELL TO FISH"          >>  $LOG_FILE
    chsh -s $(which fish)                                   2>> $LOG_FILE


    # verifying if the shell was changed succesfully
    if [ "$SHELL" != "$(which fish)" ]; then
        echo "SHELL WAS NOT CHANGED."                       >>  $LOG_FILE
        echo "CURRENT SHELL IS $SHELL"                      >>  $LOG_FILE
        echo "Some errors occurred while changing the default shell to fish."
        echo "Please refer to the log file \"$LOG_FILE\""
    fi

fi

