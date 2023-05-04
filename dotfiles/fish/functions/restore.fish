#!/usr/bin/env fish


function restore --description "Restore backup files *.bak"


    # options:
    #   -h/--help: help page
    argparse h/help -- $argv
    or return


    # help option
    if set -q _flag_help
        echo -e "Name:"
        echo -e "\trestore - restore backup files"
        echo
        echo -e "Syntax:"
        echo -e "\trestore FILES..."
        echo
        echo -e "Description:"
        echo -e "\tRestore backup files ending in .bak ."
        echo -e "\tNote that the following are both valid:"
        echo -e "\t\t\$restore file"
        echo -e "\t\t\$restore file.bak"
        echo -e "\tand they both result in"
        echo -e "\t\t\$mv file.bak file"
        echo
        echo -e "Options:"
        echo -e "\t-h, --help"
        echo -e "\t\thelp page"
        return 0
    end



    # error flags
    set -l file_not_found 0


    # backing up files
    for file in $argv

        set -l backup_file
        set -l restored_file

        # checks whether the the file ends with .bak
        if string match -qr ".bak\$" $file
            set backup_file   $file
            set restored_file (string sub --start=1 --end=-4 $file)
        else
            set backup_file   $file.bak
            set restored_file $file
        end


        # check if the plain backup file exists
        if test -e $backup_file
            # restoring the file
            mv $backup_file $restored_file

        # check if an hidden backup file exists
        else if test -e .$backup_file
            # restoring the file
            mv .$backup_file $restored_file

        else
            # raise an error because the none of the
            # backup files was found
            echo "Unable to find \"$backup_file\", \".$backup_file\""
            set file_not_found 1
        end

    end


    # raise an error if a file was not found
    if test $file_not_found != 0
        return 1
    end

end
