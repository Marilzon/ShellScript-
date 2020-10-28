#!/bin/bash

# Name: listUsers.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  Scriot to list users of system and this informations
# Usage: . listUsers.sh

#UIDs utilitary to users
MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)

OLDIFS=$IFS
IFS=$'\n' # modifing the IFS default separator

# create the head of return 
echo -e "USER\t\tUID\t\tDIR HOME\t\tNAME OR DESCRIPTION"

for each in $(cat /etc/passwd)
do
    USERID=$(echo $each | cut -d":" -f3)
    if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
    then 
        USER=$(echo $each | cut -d":" -f1)
        USERDESC=$(echo $each | cut -d":" -f5 | tr -d ',')
        USERHOME=$(echo $each | cut -d":" -f6)
        echo -e "$USER\t$USERID\t\t$USERHOME\t\t$USERDESC"
    fi
done
IFS=$OLDIFS
