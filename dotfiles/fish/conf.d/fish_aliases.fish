#!/usr/bin/env fish

# {{ LISTING ABBR }}

# list (equivalent to ls)
function l
    exa -1F -s type --icons;
end
funcsave -q l

# list long
function ll
    exa -lF -s type --icons
end
funcsave -q ll

# list all
function la
    exa -1aF -s type --icons
end
funcsave -q la

# list long all
function lla
    exa -laF -s type --icons
end
funcsave -q lla

# list tree (equivalent to tree)
function lt
    exa -TF -s type --icons
end
funcsave -q lt

# list long tree
function llt
    exa -lTF -s type --icons
end
funcsave -q llt

# list tree all
function lta
    exa -TaF -s type --icons
end
funcsave -q lta

# list long tree all
function llta
    exa -lTaF -s type --icons
end
funcsave -q llta




# {{ CLEAR SCREEN (AND LIST) }}

abbr c "clear" # clear the screen

# clear and list
function cl
    clear
    l $argv
    echo
end
funcsave -q cl

# clear and list long
function cll
    clear
    ll $argv
    echo
end
funcsave -q cll

# clear and list all
function cla
    clear
    la $argv
    echo
end
funcsave -q cla

# clear and list long all
function clla
    clear
    lla $argv
    echo
end
funcsave -q clla

# clear and list tree
function clt
    clear
    lt $argv
    echo
end
funcsave -q clt

# clear and list tree all
function clta
    clear
    lta $argv
    echo
end
funcsave -q clta

# clear and list long tree all
function cllta
    clear
    llta $argv
    echo
end
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
