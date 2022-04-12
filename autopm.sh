#!/bin/bash
pacup_num=$(/usr/bin/pacman -Qu | wc -l)
pacdep_num=$(/usr/bin/pacman -Qdtq | wc -l)
main_menu() {
	echo -e "1) Go to Package Updater\n"
	echo -e "2) Go to Dependency Maintanence\n"
	echo -e "3) Clean your Cache\n"
	echo -e "0) Exit Auto Pacman\n"
	echo -n "Enter your Selection: "
	read selection
}
enter() {
	echo -n " Press Enter to continue"
	read
}
selection1() {
	echo -e "Syncing With the Arch repositories"
	echo " "	
	sudo pacman -Syy	
	echo " ------#-Package Updater-#------ "
	echo -e "1) Update packages\n"
	echo -e "2) View list of packages\n"
	echo -n "Enter your selection: "
	read selection 
}
selection2() {
	echo -e "Syncing With the Arch repositories"
	echo " "	
	sudo pacman -Syy	
	echo " ------#-Dependency Manager-#------ "
	echo -e "1) Remove Unneeded Dependencies\n"
	echo -e "2) View list of Dependencies\n"
	echo -n "Enter your selection: "
	read selection 
}
pacup() {
	case $selection in
		1 )  sudo pacman -Syyu --noconfirm ;;
		2 )  echo "There are $pacup_num packages that need to be updated!" && pacman -Qu ;;
	esac
}
deppacs() {
	case $selection in 
		1 ) echo "There are $pacdep_num dependencies that are unneeded!" ; sudo pacman -Rns $(pacman -Qdtq) --noconfirm 2> /dev/null ;; 
		2 ) echo "There are $pacdep_num dependencies that are unneeded!" && pacman -Qdtq ;; 
	esac
}
pac_cache() {
	sudo pacman -Sc --noconfirm && echo -e "Cache Cleaned!\n"	
}
