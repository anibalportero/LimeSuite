#!/bin/sh

# this scripts makes an absolute softlink a relative one
# needed to make a debian/ubuntu install a valid sysroot

target=$1
sysroot=$2

for sl in `ls -d $target/*`; do
	if [ -h $sl ]; then
		echo doing re re ln of $target on root $sysroot

		src=`ls -l $sl | awk '{print $11}'`
		link=`ls -l $sl | awk '{print $9}'`

		ln -vsf --relative $sysroot$src $link
	fi
done


