#!/bin/bash

# HandBrakeCLI -i ~/q/tapes\ work/t1\ clips/t1.00.00.00.00.mkv -o ~/q/tapes\ work/t1\ 480/t1.00.00.00.00.mkv --preset="H.264 MKV 480p30" --rate "same as source"

# FILES="~/q/tapes work/t1 clips/*"
# FILES="/home/spencer/q/tapes work/"
# FILES="$1"/home/spencer/q/tapes-work/t1-clips/*
FILES=/home/spencer/q/tapes-work/t1-clips/*
# BASENAME=
for f in $FILES
do
  echo "Processing $f file..."
  BASENAME="$(basename -- $f)"
  # take action on each file. $f store current file name
  # cat $f
  # HandBrakeCLI -i $f -o "~/q/tapes-work/t1-480/${BASENAME}" --preset="H.264 MKV 480p30" --rate "same as source"
  # HandBrakeCLI -i $f -o "~/q/tapes-work/t1-480/1.mkv" --preset="H.264 MKV 480p30" --rate "same as source"
  HandBrakeCLI -i $f -o "/home/spencer/q/tapes-work/t1-480/${BASENAME}" --preset="H.264 MKV 480p30" --rate "same as source"

done
