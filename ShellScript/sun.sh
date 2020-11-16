#!/bin/sh
#
# Create a animation of of a rotating image.
# Some alpha composition is used to crop the result to the original size.
#
command='convert -delay 10 sun.jpg'
command="$command -background white -gravity center -compose Src"

for i in `seq 5 5 360`; do
  command="$command \\( -clone 0 -rotate $i -clone 0 +swap -composite \\)"
done

command="$command -delete 0 -loop 0 sun.gif"

eval $command

chmod 644 sun.gif
