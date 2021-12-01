#!/bin/bash

#read file name
echo "Enter the file name: "
read file_name
echo "Enter the tag name: "
read tag_name
echo "Enter top_right, top_left, bottom_right, bottom_left: "
read output
ffmpeg -i $file_name -vf "drawtext=fontfile=/path/to/font.ttf:text=$tag_name:fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=10:y=30" -codec:a copy $output.mp4
