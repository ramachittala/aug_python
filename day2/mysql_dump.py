#!/usr/bin/python

import os
import time

HOST='localhost'
PORT='3306'
DB_USER='root'
DB_PASS='xxxxxx'
databases=('mysql', 'test', 'test1')
backup_path="/root/"

def get_dump(database):
    time_stamp=time.strftime('%y-%m-%d-%I')
    os.popen("mysqldump -h %s -P %s -u %s -p'%s' %s > %s%s.sql" % (HOST,PORT,DB_USER,DB_PASS,database,backup_path,database+"_"+time_stamp))
    os.system("date")
    print ("\n || Database dumped to "+database+"_"+time_stamp+".sql || ")

if __name__ =="__main__":
    for database in databases:
        get_dump(database)


