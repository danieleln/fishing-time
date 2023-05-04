#!/usr/bin/env fish


function backup --description "Copy \"file\" as \"file.bak\""


    # options:
    #   -H/--hidden: makes the backup file an hidden file by prepending a '.'
    argparse h/help H/hidden -- $argv
    or return


    # help option
    if set -q _flag_help
        echo -e "Name:"
        echo -e "\tbackup - create a backup copy of files"
        echo
        echo -e "Syntax:"
        echo -e "\tbackup [-H | --hidden] FILES..."
        echo
        echo -e "Description:"
        echo -e "\tCreate a backup copy of each file in FILES... by"
        echo -e "\tappending '.bak' at the end of their name."
        echo -e "\tBackups can be restored with '\$restore file.bak'"
        echo
        echo -e "Options:"
        echo -e "\t-h, --help"
        echo -e "\t\thelp page"
        echo
        echo -e "\t-H, --hidden"
        echo -e "\t\tbackup files are now hidden files"
        return 0
    end

    # hidden option
    set -l PREFIX
    if set -q _flag_hidden
        set PREFIX '.'
    end



    # error flags
    set -l file_not_found 0


    # backing up files
    for file in $argv

        # check if the file exists
        if test -e $file
            # backing up the file
            cp -r $file $PREFIX$file.bak
        else
            # raise an error because the file
            # was not found
            echo "Unable to find \"$file\""
            set file_not_found 1
        end

    end


    # raise an error if a file was not found
    if test $file_not_found != 0
        return 1
    end

end
