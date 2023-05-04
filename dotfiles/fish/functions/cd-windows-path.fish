#!/usr/bin/env fish


function cd-windows-path --description "Change directory to a windows path"


    # options:
    #   -h/--help: help page
    argparse h/help -- $argv
    or return


    # help option
    if set -q _flag_help
        echo -e "Name:"
        echo -e "\tcd-windows-path - change directory to a windows path"
        echo
        echo -e "Syntax:"
        echo -e "\tcd-windows-path PATH"
        echo
        echo -e "Description:"
        echo -e "\tchange directory to PATH, where PATH is"
        echo -e "\twritten in the windows format C:\\... ."
        echo -e "\tThis command is useful when running"
        echo -e "\tGNU/Linux in the WSL environment"
        echo
        echo -e "\tNote that"
        echo -e "\t\t\$cd-windows-path \"C:\\Users\\...\""
        echo -e "\tresults in:"
        echo -e "\t\t\$cd \"/mnt/c/Users/...\""
        echo
        echo -e "Options:"
        echo -e "\t-h, --help"
        echo -e "\t\thelp page"
        return 0
    end


    set -l win_path $argv[1]

    # extracting the drive letter
    set -l drive_letter (string lower (string sub --start=1 --end=1 $win_path))
    # extracting the rest of the path
    # C:\Users\...
    #    |-- trailing_path -->
    set -l trailing_path (string sub --start=4 $win_path)

    # overall path
    set -l wsl_path /mnt/$drive_letter/(string replace "\\" '/' $trailing_path)

    cd $wsl_path
end
