#!/usr/bin/env fish



# list (equivalent to ls)
alias l="exa -1F -s type --icons"
alias ls=l

# list long
alias ll="exa -lF -s type --icons"

# list all
alias la="exa -1aF -s type --icons"

# list long all
alias lla="exa -laF -s type --icons"

# list tree (equivalent to tree)
alias lt="exa -TF -s type --icons"
alias tree=lt

# list long tree
alias llt="exa -lTF -s type --icons"

# list long tree all
alias llta="exa -lTaF -s type --icons"



alias clr="clear"

# clear and list
function cl; clear; l $argv; echo; end
funcsave -q cl
alias cls=cl

# clear and list long
function cll; clear; ll $argv; echo; end
funcsave -q cll

# clear and list all
function cla; clear; la $argv $argv; echo; end
funcsave -q cla

# clear and list long all
function clla; clear; lla $argv; echo; end
funcsave -q clla

# clear and list tree
function clt; clear; lt $argv; echo; end
funcsave -q clt
alias ctree=clt

# clear and list long tree all
function cllta; clear; llta $argv; echo; end
funcsave -q cllta



alias vi="nvim"
alias vim="nvim"



alias ..="cd .."
alias ...="cd ../.."
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."
alias .7="cd ../../../../../../.."



alias quit="exit 0"
