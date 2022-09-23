#!/bin/bash


VIDEO_URL=(
"https://www.youtube.com/watch?v=MP5jeeOPix0"
"https://www.youtube.com/watch?v=hg_XaJIFVpk"
"https://www.youtube.com/watch?v=fG44VOFwLsA"
"https://www.youtube.com/watch?v=H9USwoA_Qks"
)


EXPORT_DIR=downloaded_videos
mkdir -p $EXPORT_DIR

for video_url in "${VIDEO_URL[@]}";do 
    echo "Downloading $video_url"
    yt-dlp $video_url -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" -o "$EXPORT_DIR/%(title)s.%(ext)s" 
done 
