#!/usr/bin/python

num = int(raw_input("enter the num:"))

if num == 0:
   print "the given num is zero"
elif num < 0:
   print "the given number is -ve num"
elif num > 0:
   print "the given number greater than 0"
else:
   print "num not in the range" 
