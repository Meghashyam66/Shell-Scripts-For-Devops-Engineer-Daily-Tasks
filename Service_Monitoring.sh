#!/bin/bash

 ################################
#                                #
#                                #
# Author :: Meghashyam Gher      #
#                                #
# Date   :: 07-04-2025           #
#                                #
# Script :: Service Monitoring   #
#                                #
# Version :: v1                  #
#                                #
#                                #
 ################################
 

echo "######################## Installing System Packages ########################"

sudo apt update -y

echo "######################## Installing Mail Utilities ########################"

sudo apt install mailutils -y

echo "######################## Configuration....!! ##############################"

service=$1

email="meghashyamgher66@gmail.com"

log_file="/var/log/devops_monitor.log"

#======================== Function =============================

log_msg() {
   
	echo "$(date) : $1" | sudo tee -a $log_file

}

echo "######################## Check Service....!! ##############################"

if systemctl is-active --quiet $1

then
	log_msg "$1 is running ✅"
else
	log_msg "$1 is DOWN ❌"

#============= restart service =====================

        sudo systemctl restart $1 

	sleep 3

#============= Check Again =========================


        if systemctl is-active --quiet $1

	then
		log_msg " $1 is Restarted Sucessfully .....!! 🔁"

		echo "$1 was down but restarted successfully at $(date)" | mail -s "Service Restart Alert" $email

        else
		log_msg " $1 FAILED to restart 🚨 "

		echo "$1 is Down and restart to failed at $(date)" | mail -s "Service Down Alert" $email

	fi

fi	
