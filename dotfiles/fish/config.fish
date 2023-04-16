set -gx TERM xterm-256color
set -gx EDITOR nvim

# enable vi key bindings in terminal
fish_vi_key_bindings

# listing
alias l="exa -1"        # list
alias ll="exa -l"       # list long
alias la="exa -1a"      # list all
alias lla="exa -la"     # list long all
alias lt="exa -T"       # list tree
alias llt="exa -lT"     # list long tree
alias llta="exa -lTa"   # list long tree all
alias ls="exa -1"       # list
alias tree="exa -T"     # list tree


# text editor
alias vi="nvim"
alias vim="nvim"


# change directory
alias ..="cd .."
alias ...="cd ../.."
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."
alias .7="cd ../../../../../../.."


# clear & quit
alias cls="clear"
alias quit="clear;exit"
