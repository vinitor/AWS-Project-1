#!/usr/bin/env python
#
import os
from os import path
import sys
import commands
import subprocess
import glob
import datetime


now = datetime.datetime.now()

for i in range(0,int(sys.argv[1])):
   ifdata = subprocess.Popen(['ifconfig', '-a'],stdout=subprocess.PIPE)
   fileExt = now.strftime("%Y%m%d%H%M")
   out,err=ifdata.communicate()
   filename=('../log/logfile.%s' % fileExt)
   print(filename)
   f=open(filename,'w')
   f.write(out)
