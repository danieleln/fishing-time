#!/usr/bin/env fish


function fish_mode_prompt

    printf (set_color $cl_low_contrast)'╭─('

    switch $fish_bind_mode
        case insert
            # insert mode
            printf (set_color brgreen)i

        case default
            # normal mode
            printf (set_color brred)n

        case visual
            # visual mode
            printf (set_color brpurple)v

        case '*'
            printf $fish_bind_mode
    end

    printf (set_color $cl_low_contrast)') '
end
