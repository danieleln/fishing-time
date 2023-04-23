#!/usr/bin/env fish


function __prompt_git_branch
    # branch color
    if set -q __prompt_git_color_branch_name
        set_color $__prompt_git_color_branch_name
    else if set -q __prompt_git_color
        set_color $__prompt_git_color
    end


    set --local branch (command git symbolic-ref --short HEAD 2>/dev/null;
        or command git name-rev --name-only HEAD 2>/dev/null)
    printf $branch
end
