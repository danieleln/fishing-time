#!/usr/bin/env fish


function __prompt_git_test_dir

    # check if the 'git' command is available
    if not type -q --no-functions git
        false
    end


    # test if the current directory is inside a git repo
    set --local is_git_repository (command git rev-parse --is-inside-work-tree 2>/dev/null)

    if test -n "$is_git_repository"
        true
    else
        false
    end

end
