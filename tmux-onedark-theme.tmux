#!/bin/bash
material_dark_black="#292929"
material_dark_blue="#82aaff"
material_dark_yellow="#ffcb6b"
material_dark_red="#f07178"
material_dark_white="#B0BEC5"
material_dark_green="#c3e88d"
material_dark_visual_grey="#3F3F3F"
material_dark_comment_grey="#5c6370"

get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$material_dark_white"
set "message-bg" "$material_dark_black"

set "message-command-fg" "$material_dark_white"
set "message-command-bg" "$material_dark_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$material_dark_black"
setw "window-status-bg" "$material_dark_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$material_dark_black"
setw "window-status-activity-fg" "$material_dark_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$material_dark_comment_grey"
set "window-active-style" "fg=$material_dark_white"

set "pane-border-fg" "$material_dark_white"
set "pane-border-bg" "$material_dark_black"
set "pane-active-border-fg" "$material_dark_green"
set "pane-active-border-bg" "$material_dark_black"

set "display-panes-active-colour" "$material_dark_yellow"
set "display-panes-colour" "$material_dark_blue"

set "status-bg" "$material_dark_black"
set "status-fg" "$material_dark_white"

set "@prefix_highlight_fg" "$material_dark_black"
set "@prefix_highlight_bg" "$material_dark_green"
set "@prefix_highlight_copy_mode_attr" "fg=$material_dark_black,bg=$material_dark_green"
set "@prefix_highlight_output_prefix" "  "

set "status-right" "#[fg=$material_dark_visual_grey,bg=$material_dark_visual_grey]"
set "status-left" "#[fg=$material_dark_black,bg=$material_dark_green,bold] #S #{prefix_highlight}#[fg=$material_dark_green,bg=$material_dark_black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$material_dark_black,bg=$material_dark_black,nobold,nounderscore,noitalics]#[fg=$material_dark_white,bg=$material_dark_black] #I  #W #[fg=$material_dark_black,bg=$material_dark_black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$material_dark_black,bg=$material_dark_visual_grey,nobold,nounderscore,noitalics]#[fg=$material_dark_white,bg=$material_dark_visual_grey,nobold] #I  #W #[fg=$material_dark_visual_grey,bg=$material_dark_black,nobold,nounderscore,noitalics]"
