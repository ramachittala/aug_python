#!/usr/bin/python

import pwd
import sys

name=raw_input("Enter the name:")

try: 
    t=pwd.getpwnam(name)
    print  t
except Exception, e:
    print >> sys.stderr, "uesr doesn't exist"
    print >> sys.stderr, "Exception: %s" %str(e)
    sys.exit(1)

