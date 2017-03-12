#!/bin/bash
#
# Administration Script
# 
# Author: Elton Santos <eltonaxl@hotmail.com>
# Date: 12/03/2017
#

while true
do
	menu="\\t1) Show active process
\\t2) Show the files systems of pc
\\t3) Show how many time the pc is up
\\t4) Active users
\\t5) Kernel version
\\t6) Show users of pc
\\t7) Leave"

	echo "Administration script - by Elton Santos"

	echo -e "$menu"

	echo "Choose a option: "
	read op

	case $op in
		1) ps aux ;;
		2) df ;;
		3) time=`uptime | cut -d\  -f4,5`
			echo "The pc is up the $time" ;;
		4) users | tr \  \\n ;;
		5) cat /proc/version | cut -d\  -f3 ;;
		6) cat /etc/passwd | cut -d: -f1 ;;
		7) exit ;;
		*) echo -e "Invalid option!\n" ;;
	esac

	echo -e "\nEnter for back to menu...\n"
	read digit

done