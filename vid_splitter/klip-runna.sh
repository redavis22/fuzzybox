#!/bin/bash
while true
do
# need bash code to ask for input file, but for now hard code it
	clear
	cat klip-runna-logo
	read -p "Enter path of video file: " video
	read -p "Enter start time of clip hh:mm:ss: " start
	read -p "Enter clip end time hh:mm:ss : " end
	read -p "Enter output filname: " output
	
	#ffmpeg -ss $start -to $end -i $video -acodec libmp3lame -vcodec libx264 $output.mp4

	ffmpeg -i $video.mp4 -ss $start -to $end -c:v libx264  -crf 18  $output.mp4
	clear
	sleep 1
done
