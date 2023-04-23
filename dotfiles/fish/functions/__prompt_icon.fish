#!/usr/bin/env fish


function __prompt_icon
    

    if fish_is_root_user
        printf "$(set_color $__prompt_icon_color_root)$__prompt_icon_symbol_root"
    else
        printf "$(set_color $__prompt_icon_color_user)$__prompt_icon_symbol_user"
    end

end

