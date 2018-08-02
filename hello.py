#!/usr/bin/python

import os
import subprocess
print  "Hello world"
os.system ("echo $USER")
os.system("date")
#opt=os.system("who | wc -l")
opt = subprocess.check_output("who | wc -l", shell=True )
print ("no of users logged into the machine: " + str(int(opt)))
dat = subprocess.check_output("date", shell=True)
print "today date is:" + dat

