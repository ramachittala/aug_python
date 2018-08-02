#!/usr/bin/bash

echo "Hello $USER"
echo -e "Today is \c"; date
echo -e "Number of user login : \c " ; who | wc -l
exit 0
