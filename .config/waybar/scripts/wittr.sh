#!/usr/bin/sh
req=$(curl -s wttr.in/Troy,%20New%20York?format="%t|%l+(%c%f)+%h,+%C&u")
bar=$(echo $req | awk -F "|" '{print $1}')
tooltip=$(echo $req | awk -F "|" '{print $2}')
echo "{\"text\":\"$bar\", \"tooltip\":\"$tooltip\"}"
