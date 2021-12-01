#!/bin/bash
echo "Enter top or bottom: "
read input

top="top"
bottom="bottom"

if [[ "$input" = "$top" ]];
then
    ffmpeg -i top_left.mp4 -i top_right.mp4  -filter_complex hstack=inputs=2 top.mp4
elif [[ "$input" = "$bottom" ]];
then 
    ffmpeg -i bottom_left.mp4 -i bottom_right.mp4 -filter_complex hstack=inputs=2 bottom.mp4

else
    echo "Wrong keyword '$input'"
fi
