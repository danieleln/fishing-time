#!/usr/bin/env fish

# {{ LISTING ABBR }}
abbr l    "exa -1F   -s type --icons"  # list (equivalent to ls)
abbr ll   "exa -lF   -s type --icons"  # list long
abbr la   "exa -1aF  -s type --icons"  # list all
abbr lla  "exa -laF  -s type --icons"  # list long all
abbr lt   "exa -TF   -s type --icons"  # list tree (equivalent to tree)
abbr llt  "exa -lTF  -s type --icons"  # list long tree
abbr llta "exa -lTaF -s type --icons"  # list long tree all



# {{ CLEAR SCREEN (AND LIST) }}

abbr c "clear" # clear the screen

function cl;    clear; l $argv;    echo; end  # clear and list
funcsave -q cl

function cll;   clear; ll $argv;   echo; end  # clear and list long
funcsave -q cll

function cla;   clear; la $argv;   echo; end  # clear and list all
funcsave -q cla

function clla;  clear; lla $argv;  echo; end  # clear and list long all
funcsave -q clla

function clt;   clear; lt $argv;   echo; end  # clear and list tree
funcsave -q clt

function cllta; clear; llta $argv; echo; end  # clear and list long tree all
funcsave -q cllta



# {{ NEOVIM ABBR }}
abbr vim "nvim"
abbr vi  "nvim"



# {{ PARENT DIRECTORY ABBR }}
abbr ..  "cd .."
abbr ... "cd ../.."
abbr .1  "cd .."
abbr .2  "cd ../.."
abbr .3  "cd ../../.."
abbr .4  "cd ../../../.."
abbr .5  "cd ../../../../.."
abbr .6  "cd ../../../../../.."
abbr .7  "cd ../../../../../../.."



# {{ EXIT ABBR }}
abbr exit "exit 0"
abbr quit "exit 0"
