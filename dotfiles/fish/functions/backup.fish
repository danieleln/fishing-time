#!/usr/bin/env fish


function backup
    # error flag
    set -l file_not_found 0

    for file in $argv

        if test -e $file
            # backup file
            cp -r $file $file.bak
        else
            # raise an error
            echo "Unable to find \"$file\""
            set file_not_found 1
        end

    end


    # raise an error if a file was not found
    if test $file_not_found != 0
        return 1
    end

end
