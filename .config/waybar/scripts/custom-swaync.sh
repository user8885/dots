#!/usr/bin/env bash

export dnd=$(swaync-client -D)

if [[ "$dnd" == "true" ]]; then
  echo "󰂛  $(swaync-client -c)"
else
  echo "󰂚  $(swaync-client -c)" 
fi

exit
