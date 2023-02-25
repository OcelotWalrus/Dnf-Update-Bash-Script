#!/bin/bash

# Basic imports

option=$1
parameter=$2
parameter2=$3

bold=$(tput bold)
normal=$(tput sgr0)

disable_done=False

# Options

if [ "$option" == "autoremove" ]; then
	echo "Removing all uneeded packages that were originally installed as dependencies..."
	sudo dnf autoremove -y
fi

if [ "$option" == "check" ] || [ "$option" == "check-updates" ]; then
	echo "Checking for updates..."
	dnf check
fi

if [ "$option" == "upgrade" ] || [ "$option" == "update" ]; then
	sudo dnf upgrade -y
fi

if [ "$option" == "help" ] || [ "$option" == "" ]; then
	echo "${bold}HELP PAGE:"
	echo " "
	echo "${bold}OPTIONS${normal} (First entry):"
	echo " "
	echo "${bold}autoremove${normal}: remove all unneeded packages that were originally installed as dependencies"
	echo "${bold}check/check-updates${normal}: check for updates"
	echo "${bold}help${normal}: show this page"
	echo "${bold}upgrade/update${normal}: update your system"
	echo " "
	echo "${bold}PARAMETERS${normal} (Second and Third entry):"
	echo " "
	echo "${bold}-clean${normal}: clean cashed data after executing option"
	echo "${bold}-exit${normal}: close terminal window after executing option"
	echo "${bold}-poweroff${normal}: poweroff your system after executing option (alias: -shutdown)"
	echo "${bold}-reboot${normal}: reboot your system after executing option (alias: -restart)"
	echo "${bold}-restart${normal}: restart your system after executing option (alias: -reboot)"
	echo "${bold}-shutdown${normal}: shutdown your system after executing option (alias: -poweroff)"
	disable_done=True
fi
# Parameters

# First

if [ "$parameter" == "-clean" ]; then
	echo "Cleaning cashed data..."
	sudo dnf clean all -y
fi

if [ "$parameter" == "-exit" ]; then
	echo "Closing terminal window..."
	kill -9 $PPID
fi

if [ "$parameter" == "-poweroff" ] || [ "$parameter" == "-shutdown" ]; then
	echo "Shutingdown your system in 15 seconds..."
	sleep 15
	sudo poweroff
fi

if [ "$parameter" == "-reboot" ] || [ "$parameter" == "-restart" ]; then
	echo "Rebooting your system in 15 seconds..."
	sleep 15
	sudo reboot
fi

# Second

if [ "$parameter2" == "-clean" ]; then
	echo "Cleaning cashed data..."
	sudo dnf clean all -y
fi

if [ "$parameter2" == "-exit" ]; then
	echo "Closing terminal window..."
	kill -9 $PPID
fi

if [ "$parameter2" == "-poweroff" ]; then
	echo "Shutingdown your system in 15 seconds..."
	sleep 15
	sudo poweroff
fi

if [ "$parameter2" == "-reboot" ]; then
	echo "Rebooting your system in 15 seconds..."
	sleep 15
	sudo reboot
fi

if [ "$parameter2" == "-restart" ]; then
	echo "Restarting your system in 15 seconds..."
	sleep 15
	sudo reboot
fi

if [ "$parameter2" == "-shutdown" ]; then
	echo "Shutingdown your system in 15 seconds..."
	sleep 15
	sudo shutdown
fi

# End jobs

if [ "$disable_done" == False ]; then
	echo "${bold}Done"
fi
