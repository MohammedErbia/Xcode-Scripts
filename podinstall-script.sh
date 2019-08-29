#! /bin/bash
# Script to open terminal and install cocoapods

pwd=$(pwd)
osascript  <<EOF
tell app "Terminal"
do script "cd $pwd; pod install"
end tell
EOF
