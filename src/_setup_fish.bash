#!/usr/bin/env bash

# log file
LOG_FILE=$1


# checking if the fish shell is already installed
if which fish > /dev/null; then

    # fish is already installed
    echo -e "\n\n\nFish shell is already installed."

else
    # installing fish
    echo "Installing fish shell."
    echo "Please, type in your password to start the installation"
    sudo apt-add-repository ppa:fish-shell/release-3 -y
    sudo apt update
    sudo apt install fish -y


    # verifying if fish has been installed correctly
    if ! which fish > /dev/null; then
        echo "Something went wrong during the installation of the fish shell."
        echo "Please refer to the log file \"$LOG_FILE\""
        exit 1
    fi
fi





# changing default shell to fish
if [ "$SHELL" != "$(which fish)" ]; then
    echo -e "\n\nEnter your password to change the default shell to fish:"
    chsh -s $(which fish)


    # verifying if the shell was changed succesfully
    if [ "$SHELL" != "$(which fish)" ]; then
        echo "Some errors occurred while changing the default shell to fish."
        echo "Please refer to the log file \"$LOG_FILE\""
    fi

fi

