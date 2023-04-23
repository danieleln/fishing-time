#!/usr/bin/env fish

function __prompt_git_commits

    set --local has_upstream (command git rev-parse --abbrev-ref '@{upstream}' 2>/dev/null)
    if test -n "$has_upstream"  # check there is an upstream repo configured
        and test "$has_upstream" != '@{upstream}' # Fixed #179, dont check the empty repo
        command git rev-list --left-right --count 'HEAD...@{upstream}' \
        | read --local --array git_status
        set --local commit_to_push $git_status[1]
        set --local commit_to_pull $git_status[2]

        if test "$commit_to_push" -gt 0  # upstream is behind local repo
            if set -q __prompt_git_color_unpushed_commits
                set_color $__prompt_git_color_unpushed_commits
            else if set -q __prompt_git_color
                set_color $__prompt_git_color
            end

            printf " $__prompt_git_symbol_unpushed_commits"
        end

        if test "$commit_to_pull" -gt 0  # upstream is ahead of local repo
            if set -q __prompt_git_color_unpulled_commits
                set_color $__prompt_git_color_unpulled_commits
            else if set -q __prompt_git_color
                set_color $__prompt_git_color
            end

            printf " $__prompt_git_symbol_unpulled_commits"
        end
    end

end
