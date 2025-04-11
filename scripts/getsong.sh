#!/bin/bash
# works with youtube and spotify too

status=$(playerctl status)
max_length=40

if [[ "$status" = "Playing" || "$status" = "Paused" ]]; then
   artist=$(playerctl metadata -a --format "{{ artist }}")
   title=$(playerctl metadata -a --format "{{ title }}")
   total_duration=$(
      playerctl metadata --format "{{ duration(mpris:length) }}"
   )
   current_position=$(
      playerctl metadata --format "{{ duration(position) }}"
   )
   output="$current_position/$total_duration $artist - $title"

   # ${#output} gives us the length of string  (in this case $output)
   if [[ ${#output} -gt $max_length ]]; then
      # string slicing, cuts string from index 0 to max length
      echo "${output:0:$max_length}..."
   else
      echo "$output"
   fi
else
   echo "Not vibing yet..."
fi
