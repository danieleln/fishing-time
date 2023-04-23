#!/usr/bin/env fish


function fish_prompt
    
    __prompt_status $status
    
    __prompt_path


    if __prompt_git_test_dir
        set_color $__prompt_color_auxiliary
        printf '('

        __prompt_git_branch
        __prompt_git_dirty
        __prompt_git_commits

        set_color $__prompt_color_auxiliary
        printf ')'
    end

    set_color $__prompt_color_auxiliary
    printf "\n╰─ "

    __prompt_icon

    printf ' '

    set_color normal
end

