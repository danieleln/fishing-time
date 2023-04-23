#!/usr/bin/env fish


function __prompt_path
    # print working directory
    set working_dir (string replace $HOME '~' (pwd))
    set working_dir (string replace '/' $__prompt_path_symbol_directory_separator $working_dir)

    # set dirs (string split '/' $working_dir)
    # if test (count $dirs) -gt 3
    #     set dirs $dirs[-3..-1]
    # end
    # set working_dir (string join "$dir_separator" $dirs)

    set_color $__prompt_path_color_working_directory
    printf $working_dir

end
