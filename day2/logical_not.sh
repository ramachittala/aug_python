

cd=/va/log/

if [ ! -d /var/log/backup ];
then 
   mkdir -p /var/log/backup
else
    printf "dir exist\n"
fi
