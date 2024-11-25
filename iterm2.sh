#!/bin/zsh

# Open iTerm2 and run nvim
open -a iTerm .
# Use AppleScript to send the command to iTerm2
echo $1

osascript <<EOF
tell application "iTerm"
    tell the current session of current window
        write text "ssh -t -i $1"
    end tell
end tell
EOF
