#!/bin/bash
#===============================================================
#AUTHOR: Jefferson Rocha <jeffersoncarneiro@slackjeff.com.br>
#
# Recording audio in terminal linux. Depends sox.
#===============================================================

# Sox exist?
type -P sox &>/dev/null || { echo "Sox not found. Please install"; exit 1 ;}

# Enter a valid name and format.
read -p "Please set name and extension audio: " audio_format
[[ -z "$audio_format" ]] && { audio_format="teste.ogg"; echo "Null? audio-format=teste.ogg" ;}

# Recording now.
sox -t alsa --show-progress -c 2 default "$audio_format"