#!/usr/bin/env python
"""
Copyright (c) 2011 Diogo Ferreira <diogo@underdev.org>
Copyright (c) 2011 The CyanogenMod project

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
"""

from optparse import OptionParser

BUFFER_SIZE=1024*1024

def convert(sinpath,imgpath):
	sinfile = open(sinpath,'r')
	imgfile = open(imgpath,'w')
		
	sinfile.seek(4)
	bt = sinfile.read(2)
	skipsize = (ord(bt[0])<<8) | ord(bt[1]) + 16
	sinfile.seek(4)

	sinfile.seek(skipsize)
	while True:
		buff = sinfile.read(BUFFER_SIZE)
		if len(buff) == 0:
			break
		imgfile.write(buff)

	sinfile.close()
	imgfile.close()

if __name__ == '__main__':
	import sys
	
	if len(sys.argv) != 3:
		print 'Usage: %s image.sin image.img' % sys.argv[0]
		sys.exit(1)
	
	sin = sys.argv[1]
	img = sys.argv[2]
	
	try:
		convert (sin, img)
	except IOError:
		print 'Error while reading or writing.'
		sys.exit(1)

