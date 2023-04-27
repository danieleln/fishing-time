#!/usr/bin/env fish

# {{ LISTING ABBR }}

# list (equivalent to ls, but uses exa)
function l
    exa -1F --group-directories-first -s extension --icons $argv
end
funcsave -q l

abbr ll   l -lF   # list long
abbr la   l -a    # list all
abbr lla  l -la   # list long all
abbr lt   l -T    # list tree (equivalent to tree)
abbr llt  l -lT   # list long tree
abbr lta  l -Ta   # list tree all
abbr llta l -lTa  # list long tree all




# {{ CLEAR SCREEN (AND LIST) }}

abbr c "clear" # clear the screen

# clear and list
function cl
    clear
    l $argv
    echo
end
funcsave -q cl

abbr cll   cl -lF   # clear and list long
abbr cla   cl -a    # clear and list all
abbr clla  cl -la   # clear and list long all
abbr clt   cl -T    # clear and list tree (equivalent to tree)
abbr cllt  cl -lT   # clear and list long tree
abbr clta  cl -Ta   # clear and list tree all
abbr cllta cl -lTa  # clear and list long tree all



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
