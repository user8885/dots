#!/usr/bin/env bash

artist=$(playerctl -p spotify metadata | awk ' /artist/ {for (i=3; i<NF; i++) printf $i " "; if (NF >= 3)  print $NF}')
title=$(playerctl -p spotify metadata | awk ' /title/ {for (i=3; i<NF; i++) printf $i " "; if (NF >= 3)  print $NF}')
album=$(playerctl -p spotify metadata | awk ' /album / {for (i=3; i<NF; i++) printf $i " "; if (NF >= 3)  print $NF}')
status=$(playerctl -p spotify status)

show () {
  tooltip="$artist - $album - $title"
  text="$icon $artist - $title"
  echo '{"text": "'$text'", "tooltip": "'$tooltip'"}'
}

if [[ "$status" == "Playing" ]]; then
 icon=""
 show 
elif [[ "$status" == "Paused" ]]; then
 icon="" 
 show
else
 echo '{"text": " Not Playing", "tooltip": "Spotify might not be running.\nPlease start Spotify to see output."}'
fi

exit
