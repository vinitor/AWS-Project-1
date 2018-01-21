#! /usr/bin/python
import os
import sys
#
for filename in sys.argv[1:]:
   print ("checking for %s" % filename)
   if os.path.isfile(filename):
      print ("found file %s" % filename)
      os.remove(filename)
      print ("removed file %s" % filename)
   else:
      print("file not found %s" % filename)  
