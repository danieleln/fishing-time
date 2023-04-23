#!/usr/bin/env fish


function __prompt_status
    
    if test $argv[1] != 0
        printf (set_color $__prompt_color_auxiliary)"{"
        printf (set_color $__prompt_color_error)$argv[1]
        printf (set_color $__prompt_color_auxiliary)"} "
    end

end
