#!/usr/bin/bash

NOW=$(date +"%d-%m-%Y")
location=/var/log/mysql-backup
muser=root
mpass="xxxxx"
mhost=localhost
opt=/root/file
mysql=/usr/bin/mysql
mysqldump=/usr/bin/mysqldump
gzip=/bin/gzip


if [ ! -d "$location" ]
then
   mkdir $location
fi


dbconnect="$(mysql -u root -p'xxxxxxx' -Bse 'show databases' > $opt)"

echo -n "Dumping..."
for i in `cat $opt`

do 
FILE="$location/mysql-$i.$NOW-$(date +"%T").gz"
 $mysqldump -u $muser -h $mhost -p'Rama$1819' $i | $gzip -9 > $FILE
done
echo "done...\n"

