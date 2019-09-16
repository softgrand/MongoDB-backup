#! /bin/bash 
clear 
i="y"

while [ $i = "y" ] 
do




echo " ___  _____  ____  ____  ___  ____    __    _  _  ____ " 
echo "/ __)(  _  )( ___)(_  _)/ __)(  _ \  /__\  ( \( )(  _ \ "
echo "\__ \ )(_)(  )__)   )( ( (_-. )   / /(__)\  )  (  )(_) )"
echo "(___/(_____)(__)   (__) \___/(_)\_)(__)(__)(_)\_)(____/" 

                                                                                                                                                                                                                                                                    
echo "1.BackUp Mongo" 
echo "2.Backup All Databases" 
echo "3.Backup Single Collection" 
echo "4.Restore MongoDB Database" 
echo "5.Open TCP ports"
echo "6.exit"
echo "7.install mongo-tools DebianOS"
echo "8.install mongo-tools CentOS"
echo "======================================================" 
read ch
if [ $ch == "1" ] 
then
   
   echo "--------------------------BackUp Mongo------------------------------------------------" 
   echo "path backup:" 
   read backupDir
   TODAY=`date +%d%b%Y`
   BACKUP_DIR=$backupDir
   echo "database name:"
   read databasename
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
   mongodump --db $databasename --out ${BACKUP_DIR}/${TODAY}
   echo "=====================done========================="
   
elif [ $ch == "2" ]; then
   echo "--------------------------BackUp Mongo All Database------------------------------------------------" 
   echo "path backup:" 
   read backupDir
   TODAY=`date +%d%b%Y`
   BACKUP_DIR=$backupDir
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
   mongodump --out ${BACKUP_DIR}/${TODAY}
   echo "=====================done========================="
elif [ $ch == "3" ]; then
   echo "--------------------------BackUp Mongo All Database------------------------------------------------" 
   echo "path backup:" 
   read backupDir
   TODAY=`date +%d%b%Y`
   BACKUP_DIR=$backupDir
   echo "database name:"
   read databasename
   echo "Collection Name:"
   read collectionName
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
   mongodump --collection $collectionName --db $databasename --out ${BACKUP_DIR}/${TODAY}
   echo "=====================done========================="
elif [ $ch == "4" ]; then
    echo "--------------------------Restore Mongo Database------------------------------------------------" 
    echo "path backup:" 
    read backupDir
    TODAY=`date +%d%b%Y`
    BACKUP_DIR=$backupDir
    echo "database name:"
    read databasename
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
    mongorestore --db $databasename --drop ${BACKUP_DIR}/${TODAY}/$databasename
     echo "=====================done========================="
elif [ $ch == "5" ]; then
	echo "-------------------------Open TCP ports--------------------------------------------"
	nmap -p- -T4 127.0.0.1
	echo "-----------------------------------------------------------------------------------"
	#statements
elif [ $ch == "6" ]; then
	clear;exit;
elif [ $ch == "7" ]; then
sudo apt install mongo-tools
elif [ $ch == "8" ]; then
yum install mongo-tools
fi 
done