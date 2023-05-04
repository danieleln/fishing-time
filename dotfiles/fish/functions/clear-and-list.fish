#!/usr/bin/env fish


function clear-and-list --description "Clear the screen and list the content of \$PWD"

    clear
    list $argv
    echo

end
