#!/bin/bash
if [ $# -eq 0 ] ; then
	echo "Usage: $0 <vmlinuz-file>"
	exit 1
fi

echo -n -e '\037\0213\010' > /tmp/gzip-signature
dd if=$1 of=image.gz ibs=`grep -f /tmp/gzip-signature /vmlinuz -b -a -o | cut -d: -f1` skip=1
rm /tmp/gzip-signature
gunzip -f image.gz 2>/dev/null
echo "Uncompressed image written to image"
