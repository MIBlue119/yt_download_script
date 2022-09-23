#!/bin/bash

URL_LIST=./url_list.txt

VIDEO_URL=()
while IFS= read -r line; do
  VIDEO_URL+=("$line")
done < ${URL_LIST}



EXPORT_DIR=downloaded_videos
mkdir -p $EXPORT_DIR

for video_url in "${VIDEO_URL[@]}";do 
    echo "Downloading $video_url"
    yt-dlp $video_url -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" -o "$EXPORT_DIR/%(title)s.%(ext)s" 
done 
