ffmpeg -i top.mp4 -i bottom.mp4  -filter_complex vstack=inputs=2 output.mp4
