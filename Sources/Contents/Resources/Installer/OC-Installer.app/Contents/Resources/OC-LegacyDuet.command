#!/bin/bash
# script OC-LegacyDuet
# by chris1111 
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
defaults write com.apple.terminal "Default Window Settings" "Pro"
defaults write com.apple.terminal "Startup Window Settings" "Pro"
#   Slick Progress Bar
sleep 1 & PID=$! #Progress Bar

echo "`tput setaf 7``tput sgr0``tput bold``tput setaf 26`
                **************************************************** 
                **************     OC-Legacy     ************** 
                ****************************************************
`tput sgr0` `tput setaf 7``tput sgr0`"
echo " "
echo " "
printf "["
# While process is running...
while kill -0 $PID 2> /dev/null; do 
    printf  "〖〗 〖〗 〖〗"
    sleep 0.2
done

printf '\e[8;47;82t'

./OC-LegacyDuet/OC-LegacyDuet.sh