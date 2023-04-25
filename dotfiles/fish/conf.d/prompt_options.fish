#!/usr/bin/env fish


# BASE COLOR
set -U __prompt_color_primary                    normal
set -U __prompt_color_auxiliary                  brblack
set -U __prompt_color_success                    brgreen
set -U __prompt_color_warning                    bryellow
set -U __prompt_color_error                      brred



# SESSION SEGMENT
set -U __prompt_session_color_user_username      yellow
set -U __prompt_session_color_root_username      bryellow
set -U __prompt_session_color_hostname           yellow

# ICON SEGMENT (prompt symbol)
set -U __prompt_icon_color_user                  yellow
set -U __prompt_icon_color_root                  bryellow
set -U __prompt_icon_symbol_user                 'ﬦ'
set -U __prompt_icon_symbol_root                 'Λ'

# STATUS SEGMENT (exit code)
set -U __prompt_exit_code_color_success          $__prompt_color_success
set -U __prompt_exit_code_color_failure          $__prompt_color_error

# PATH SEGMENT
set -U __prompt_path_color_working_directory     blue
set -U __prompt_path_symbol_directory_separator  '/'

# TIME SEGMENT
set -U __prompt_time_color                       normal

# GIT SEGMENT
set -U __prompt_git_color                        brpurple
set -U __prompt_git_color_branch_name            brpurple
set -U __prompt_git_color_dirty                  $__prompt_color_auxiliary
set -U __prompt_git_color_stash                  $__prompt_color_auxiliary
set -U __prompt_git_color_unpulled_commits       $__prompt_color_auxiliary
set -U __prompt_git_color_unpushed_commits       $__prompt_color_auxiliary
set -U __prompt_git_symbol_dirty                 "*"
set -U __prompt_git_symbol_unpulled_commits      "⇣"
set -U __prompt_git_symbol_unpushed_commits      "⇡"

# VI MODE SEGMENT
set -U __prompt_vimode_color_insert_mode         brgreen
set -U __prompt_vimode_color_normal_mode         brred
set -U __prompt_vimode_color_visual_mode         brpurple
set -U __prompt_vimode_color_replace_one_mode    bryellow
set -U __prompt_vimode_color_replace_mode        yellow
set -U __prompt_vimode_symbol_insert_mode        i
set -U __prompt_vimode_symbol_normal_mode        n
set -U __prompt_vimode_symbol_visual_mode        v
set -U __prompt_vimode_symbol_replace_one_mode   r
set -U __prompt_vimode_symbol_replace_mode       R
 
