#!/usr/bin/env fish


function __prompt_vimode

    switch $fish_bind_mode
        case insert
            set_color $__prompt_vimode_color_insert_mode
            printf $__prompt_vimode_symbol_insert_mode

        case default
            set_color $__prompt_vimode_color_normal_mode
            printf $__prompt_vimode_symbol_normal_mode

        case visual
            set_color $__prompt_vimode_color_visual_mode
            printf $__prompt_vimode_symbol_visual_mode

        case replace_one
            set_color $__prompt_vimode_color_replace_one_mode
            printf $__prompt_vimode_symbol_replace_one_mode

        case replace
            set_color $__prompt_vimode_color_replace_mode
            printf $__prompt_vimode_symbol_replace_mode

        case '*'
            printf $fish_bind_mode
    end
end
