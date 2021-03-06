#!/bin/bash
#Date:		03:39 2020-0925
#Author:	Create by Elecrow
#Description:	This script functions to configure file(s) to the new system.
#Version:	1.1

FOLDER="/usr/share/elecrow/script"
mkdir ${FOLDER} &>>error.txt
cp ./shutdown.py ${FOLDER}

RESULT=$(grep "shutdown.py" /etc/rc.local)
if [ -z "${RESULT}" ]; then
	sed -i 's@fi@&\npython /usr/share/elecrow/script/shutdown.py@' /etc/rc.local
else
	echo "Script has been added!"
fi

