#!/usr/bin/env fish



function fish_mode_prompt

    set_color $__prompt_color_auxiliary
    printf '╭─('

    __prompt_vimode

    set_color $__prompt_color_auxiliary
    printf ') '

end
