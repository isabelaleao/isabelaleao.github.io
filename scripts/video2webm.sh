#!/bin/bash

INPUT=$1
FILENAME=$(basename -- "$INPUT")
FILEPREFIX="${FILENAME%.*}"

ffmpeg -i $INPUT -c:v libvpx -crf 15 -b:v 1M -c:a libvorbis $FILEPREFIX.webm
