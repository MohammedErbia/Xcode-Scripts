#! /bin/bash
# Script to open terminal and install cocoapods

pwd=$(pwd)
osascript  <<EOF
tell app "Terminal"
 if not (exists window 1) then reopen
 activate
 do script "cd $pwd; pod install" in window 1
end tell
EOF
