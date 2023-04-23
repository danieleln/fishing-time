#!/usr/bin/env fish


function __prompt_git_dirty

    set --local is_git_dirty (
        # The first checks for staged changes, the second for unstaged ones.
        # We put them in this order because checking staged changes is *fast*.
        not command git diff-index --ignore-submodules --cached --quiet HEAD -- >/dev/null 2>&1
        or not command git diff --ignore-submodules --no-ext-diff --quiet --exit-code >/dev/null 2>&1
        and echo "true"
    )


    if test -n "$is_git_dirty"  # untracked or un-commited files

        # dirty symbol color
        if set -q __prompt_git_color_dirty
            set_color $__prompt_git_color_dirty
        else if set -q __prompt_git_color
            set_color $__prompt_git_color
        end

        # dirty symbol
        printf "$__prompt_git_symbol_dirty"
    end

end
