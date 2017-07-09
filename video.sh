#!/bin/sh

cat list.csv

while IFS=, read vid 
do
    youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' "$vid"
done < list.csv