

import commands
dom = raw_input("enter the domain name:")
status,output=commands.getstatusoutput("dig '%s' +short" %dom)
print "the output is:" +output
