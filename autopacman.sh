#!/bin/bash
#----------------------------------------------------#
#-----------Automated Package Manager----------------#
#-For the best use of this script make a symbolic----#
#-to your $PATH, for more info read the README.md----#
#----------------------------------------------------#
file=$(find $HOME 2> /dev/null | grep autopm.sh)
source $file
clear
echo -e "This script was made by Macklemurr on Github! :3\n"
echo -e "Please read the README.md for the best usage of this script\n"
sleep 2
clear
echo -e "Welcome to the Automated Package Manager\n"
main_menu
case $selection in 
	1 ) clear ; selection1 ; pacup ; enter ; exec "$0" ;;

	2 ) clear ; selection2 ; deppacs ; enter ; exec "$0" ;;

	3 ) clear ; pac_cache  ; sleep 3 ; exec "$0" ;;
					
	0 ) exit 0 ;; 
	    	
esac

	 
