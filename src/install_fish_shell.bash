#!/usr/bin/bash


LOG_FILE="$1"
echo $LOG_FILE
exit

# check if the fish shell is already installed
if which fish > /dev/null; then

    # fish is already installed
    echo -e "\n\nFISH SHELL IS ALREADY INSTALLED"           >> $LOG_FILE

else
    # installing fish
    echo "INSTALLING FISH SHELL"
    echo -e "\n\n\nINSTALLING FISH SHELL"                   2> $LOG_FILE
    sudo apt-add-repository ppa:fish-shell/release-3 -y     2> $LOG_FILE
    sudo apt update                                         2> $LOG_FILE
    sudo apt install fish -y                                2> $LOG_FILE



fi


# verifying if fish has been installed correctly
if which fish > /dev/null; then
    # change default shell to fish
    echo "Enter your password to change the default shell to fish:"
    chsh -s $(which fish)
else
    echo "Something went wrong during the installation of the fish shell."
    echo "Please refer to the log file \"$LOG_FILE\""
    exit 1
fi
