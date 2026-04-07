#!/bin/bash

echo "###################### Configuration ......!!! ###########################################"

src="/home/ubuntu/"

dest="/home/ubuntu/backup"

echo "###################### Created Backup Floder IF Not Exit .....!! ###########################"

if [ ! -d "$dest" ]


then
	mkdir -p "$dest"

	echo " Backup Folder Created....!! "

else
	echo "################### Directory is Exit Data Backup Started .....!! ###################"
fi

tar -czf $dest/backup_$(date +%F).tar.gz $src

echo "##################################### Backup Completed ######################################"

sleep 3

echo "################################### Delete old backups 7 Days Before ##########################"

find "$dest" -type f -mtime +7 -delete


