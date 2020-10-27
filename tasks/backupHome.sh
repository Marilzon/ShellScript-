#!/bin/bash

# Name: backupHome.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  The script is to create backup of 
#               directory /home and save zipped file.
# Usage: . backupHome.sh

BACKUPMAKE=$HOME/Backup

if [ ! -d $BACKUPMAKE ] # if not exists backup > MAKE
then 
    echo "Make Directory $BACKUPMAKE..."
    mkdir -p $BACKUPMAKE
fi

BACKUPEXISTS=$(find $BACKUPMAKE -ctime -7 -name backup_home\*tgz)

if [ "$BACKUPEXISTS" ]
then
    echo "This backup has been exists in directory $HOME then last 7 days."
    echo -n "Do you continue? (Y/n): "
    read -n1 RESPONSE
    echo 
    if [ "$RESPONSE" = N -o "$RESPONSE" = n -o "$RESPONSE" = "" ]
    then 
        echo "Backup canceled"
        exit 1
    elif [ $RESPONSE = S -o $RESPONSE = s ]
    then 
        echo "Has be created mora backup for this week"
    else 
        echo "Invalid option"
        exit 2
    fi
fi

echo "Making Backup..."
FILE="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $BACKUPMAKE/$FILE --absolute-names --exclude="$HOME/Google Drive" --exclude=$HOME/Videos --exclude="$BACKUPMAKE" "$HOME"/* > /dev/null
#tar zcvpf $BACKUPMAKE/$FILE -- exclude="$BACKUPMAKE" "$HOME"/* > /dev/null
echo
echo "This backup of name \""$FILE"\" has be created in $BACKUPMAKE"
echo 
echo "Backup done!"
