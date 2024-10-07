#!/bin/bash
# script OpenCore-legacy
# by chris1111
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
defaults write com.apple.terminal "Default Window Settings" "Pro"
defaults write com.apple.terminal "Startup Window Settings" "Pro"
nameh=`users`
function echob() {
  echo "`tput bold`$1`tput sgr0`"
}
function head
{
clear
echo "              = = = = = = = = = = = = = = = = = = = = = = = = =  "

tput blink                    
echo "                                OC-Legacy Duet" 
tput sgr0

echo "              = = = = = = = = = = = = = = = = = = = = = = = = =  "
}
function menu
{
echo "                Welcome "`tput setaf 7``tput sgr0``tput bold``tput setaf 26`$nameh`tput sgr0` `tput setaf 7``tput sgr0`", OC-Legacy Duet"
echo " "
echo "                       `tput setaf 26`
                            Credit OpenCore Team
                            Credit Apple"
echo " "
echo "                        
                 `tput setaf 7``tput sgr0``tput bold``tput setaf 26`Type: ⬇`tput sgr0` `tput setaf 7``tput sgr0`︎"
echo "               =============================================== "
echo "                     ✅  1 = `tput setaf 7``tput sgr0``tput bold``tput setaf 26`USB OC-Legacy Duet`tput sgr0` `tput setaf 7``tput sgr0`"
echo "               =============================================== "
echo "                     ✅  2 = `tput setaf 7``tput sgr0``tput bold``tput setaf 26`Post OC-Legacy Duet LogoutHook`tput sgr0` `tput setaf 7``tput sgr0`"
echo "               =============================================== "
echo "                     ❎  X = `tput setaf 7``tput sgr0``tput bold``tput setaf 26`Quit (EXIT)`tput sgr0` `tput setaf 7``tput sgr0`" 
echo "               =============================================== "

echo "              = = = = = = = = = = = = = = = = = = = = = = = = =  "

tput blink                    
echo "                                OC-Legacy Duet" 
tput sgr0

echo "              = = = = = = = = = = = = = = = = = = = = = = = = =  "

read -n 1 option
}
function OPENCORE
{
head
echo " "
./BootInstallBase.sh
echo " "
}
function POSTOPENCORE
{
echo " "
./PostBootInstallBase.sh
echo " "
}
function Quit
{
clear
echo " " 
echo "
Quit Installer OC-Legacy"
echo " "
Open ./Notification/Quit.app


exit 123456

}
while [ 1 ]
do
head
menu
case $option in


1|1)
echo
OPENCORE ;;
2|2)
echo
POSTOPENCORE ;;
x|X)
echo
Quit ;;

*)
echo ""
esac
echo
echob "`tput setaf 7``tput sgr0``tput bold``tput setaf 26`Type any key to return to the menu`tput sgr0` `tput setaf 7``tput sgr0`"
echo
read -n 1 line
clear
done

exit
