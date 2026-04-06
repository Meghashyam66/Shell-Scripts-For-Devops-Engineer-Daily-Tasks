#!/bin/bash


 ##############################
#                              #
# Author : Meghashyam Gher     #
# Date : 06-04-2026            #
# Script : Installing Packages #
# Version : v1                 #
#                              #
 ############################## 

echo " ######################### Installing System Package ######################### "

sudo apt update -y

echo " ######################### Enter Package Name ######################### "

read pkg_name


if [ "$pkg_name" = "docker.io" ] || [ "$pkg_name" = "docker" ]

then
	service_name="docker"

	echo "#################### Installing $name dependencies ###################### "

        sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

	echo "#################### Adding $name Gkeys ############################## "

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -y

	echo "#################### Adding $name Repository ########################"

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

elif [ "$pkg_name" = "ansible" ]

then
	echo "################## Adding $pkg_name Repository#######################"

        sudo apt install software-properties-common -y

	sudo add-apt-repository --yes --update ppa:ansible/ansible


else

	service_name=$name
fi


echo " ######################### Installing Package $name ######################## "

sudo apt install $service_name -y

echo " ######################### Starting $name service ######################### "

sudo systemctl start $service_name 

echo " ######################### Checking $name Status ######################### "

sudo systemctl status $service_name

echo "########################## $name installation completed! #################### "

