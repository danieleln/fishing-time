#!/usr/bin/env fish

# {{ list abbr }}
function l
    # list (equivalent to ls, but uses exa)
    exa -1F --group-directories-first -s extension --icons $argv
end
funcsave -q l

abbr ls   l         # list (equivalent to l)
abbr la   l -a      # list all
abbr ll   l -lF     # list long
abbr lla  l -la     # list long all
abbr lt   l -T      # list tree (equivalent to tree)
abbr llt  l -lT     # list long tree
abbr lta  l -Ta     # list tree all
abbr llta l -lTa    # list long tree all




# {{ clear screen (and list) }}

abbr c "clear"      # clear the screen

# clear and list
function cl
    clear
    l $argv
    echo
end
funcsave -q cl

abbr cls   cl       # clear and list (equivalent to cl)
abbr cll   cl -lF   # clear and list long
abbr cla   cl -a    # clear and list all
abbr clla  cl -la   # clear and list long all
abbr clt   cl -T    # clear and list tree
abbr cllt  cl -lT   # clear and list long tree
abbr clta  cl -Ta   # clear and list tree all
abbr cllta cl -lTa  # clear and list long tree all



# {{ cp, mkdir abbr }}
abbr cp "cp -r"       # copy is now recursive by default
abbr mkdir "mkdir -p" # mkdir now builds also the parent dir by default



# {{ neovim abbr }}
abbr vim "nvim"
abbr vi  "nvim"



# {{ parent directory abbr }}
abbr ..  "cd .."
abbr ... "cd ../.."
abbr .1  "cd .."
abbr .2  "cd ../.."
abbr .3  "cd ../../.."
abbr .4  "cd ../../../.."
abbr .5  "cd ../../../../.."
abbr .6  "cd ../../../../../.."
abbr .7  "cd ../../../../../../.."



# {{ exit abbr }}
abbr exit "exit 0"
abbr quit "exit 0"
