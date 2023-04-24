#!/usr/bin/env bash


# log file
LOG_FILE="$1"




# path of the current script
declare -r __HERE__=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )




# iterating all the file in the src folder
for file in ${__HERE__}/*; do
    filename="$(basename $file)"

    # selecting files whose name starts with "_install_" and
    # ends with ".bash"
    if [[ "$filename" == _install_*.bash ]]; then

        # extracting the program name
        program_name="${filename:9:-5}"

        # verifying if the program is already installed
        if ! which "$program_name" > /dev/null; then
            # asking the user confirmation to install the program
            echo -e "\n\nDo you want to install $program_name? [y/n]"
            read answer
        
            if [[ "$answer" == 'y' || "$answer" == 'Y' ]]
            then
                # running the installation file
                chmod u+x $file
                $file $LOG_FILE
            fi
        fi

    fi
done
