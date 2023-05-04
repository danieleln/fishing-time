#!/usr/bin/env fish


function mkdir-cd --description "Creates a directory and enters it"

    set -l dir $argv[1]

    mkdir -p $dir
    and cd $dir

end
