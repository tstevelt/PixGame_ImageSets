#!/bin/sh

if [ "$2" = '' ]
then
	echo "USAGE: svg2png FileOfName Size"
	exit 1
fi


# convert -resize 640x640 Gerald_G_KU_cirsium_arvense.svg Gerald_G_KU_cirsium_arvense.png

for NAME in `cat $1`
do
	echo "$NAME"
	convert -resize $2 $NAME.svg $NAME.png
done
