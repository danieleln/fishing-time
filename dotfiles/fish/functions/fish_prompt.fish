#!/usr/bin/env fish


set prompt_symbol_user  'ﬦ'
set prompt_symbol_root  'Λ'

set dir_separator       '/'

set cl_exit_code_fail        red
set cl_prompt_symbol_user    yellow
set cl_prompt_symbol_root    yellow
set cl_working_dir           brblue
set cl_git_working           normal
set cl_git_staging           normal
set cl_git_committed         normal
set cl_low_contrast          brblack

function fish_prompt
    
    # exit code
    set exit_code $status
    if test $exit_code != 0
        printf (set_color $cl_low_contrast)"{"
        printf (set_color $cl_exit_code_fail)$exit_code
        printf (set_color $cl_low_contrast)"} "
    end


    # print working directory
    set working_dir (string replace $HOME '~' (pwd))

    # set dirs (string split '/' $working_dir)
    # if test (count $dirs) -gt 3
    #     set dirs $dirs[-3..-1]
    # end
    # set working_dir (string join "$dir_separator" $dirs)

    printf (set_color $cl_working_dir)$working_dir



    # git repo
    printf (set_color $cl_low_contrast)'('
    printf (set_color $cl_low_contrast)')'
    
    

    # open a new line
    echo



    # prompt symbol
    printf "$(set_color $cl_low_contrast)╰─ "

    if fish_is_root_user
        printf "$(set_color $cl_prompt_symbol_root)$prompt_symbol_root "
    else
        printf "$(set_color $cl_prompt_symbol_user)$prompt_symbol_user "
    end

    # printf "❯ "



    # reset color
    set_color normal
end

