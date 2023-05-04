#!/usr/bin/env fish


function list --description "Replacement for ls"
    exa -1F --group-directories-first -s extension --icons $argv
end
