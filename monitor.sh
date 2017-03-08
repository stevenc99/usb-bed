#!/bin/sh -e

# watch for new devices appearing

if [ -d /dev/disk ]; then
	# linux
	inotifywait -m -r /dev/disk/by-id

	# example:
	# /dev/disk/by-id/ CREATE usb-Intenso_Basic_Line_D198480E-0:0
	#                          device-unique serial -^^^^^^^^
fi
