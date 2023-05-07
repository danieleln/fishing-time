#!/usr/bin/env fish

# {{ list abbr }}
# 'list' function is defined in .config/fish/functions
abbr -a ls   list         # list
abbr -a l    list         # list (equivalent to l)
abbr -a la   list -a      # list all
abbr -a ll   list -lF     # list long
abbr -a lla  list -la     # list long all
abbr -a lt   list -T      # list tree (equivalent to tree)
abbr -a llt  list -lT     # list long tree
abbr -a lta  list -Ta     # list tree all
abbr -a llta list -lTa    # list long tree all



# {{ clear abbr }}
abbr c "clear"



# {{ clear-and-list abbr }}
# 'clear-and-list' function is defined in .config/fish/functions
abbr -a cls   clear-and-list       # clear and list
abbr -a cl    clear-and-list       # clear and list
abbr -a cll   clear-and-list -lF   # clear and list long
abbr -a cla   clear-and-list -a    # clear and list all
abbr -a clla  clear-and-list -la   # clear and list long all
abbr -a clt   clear-and-list -T    # clear and list tree
abbr -a cllt  clear-and-list -lT   # clear and list long tree
abbr -a clta  clear-and-list -Ta   # clear and list tree all
abbr -a cllta clear-and-list -lTa  # clear and list long tree all



# {{ cd-windows-path abbr }}
# 'cd-windows-path' function is defined in .config/fish/functions
abbr cdwin "cd-windows-path"



# {{ mkdir-cd abbr }}
# 'mkdir-cd' function is defined in .config/fish/functions
abbr mkcd "mkdir-cd"



# {{ cp, mkdir abbr }}
abbr -a cp "cp -r"       # copy is now recursive by default
abbr -a mkdir "mkdir -p" # mkdir now builds also the parent dir by default



# {{ neovim abbr }}
abbr -a vim "nvim"
abbr -a vi  "nvim"



# {{ parent directory abbr }}
abbr -a ..  "cd .."
abbr -a ... "cd ../.."
abbr -a .1  "cd .."
abbr -a .2  "cd ../.."
abbr -a .3  "cd ../../.."
abbr -a .4  "cd ../../../.."
abbr -a .5  "cd ../../../../.."
abbr -a .6  "cd ../../../../../.."
abbr -a .7  "cd ../../../../../../.."



# {{ exit abbr }}
abbr -a exit "exit 0"
abbr -a quit "exit 0"

