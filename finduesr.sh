

passwd_file="/etc/passwd"

read -p "enter the name:" username

grep -i "$username" $passwd_file > /dev/null

status=$?

if [ "$status" -eq "0" ];
then
   printf "user $username is exists\n"
   id $username
else
   printf "user not exists"
fi

