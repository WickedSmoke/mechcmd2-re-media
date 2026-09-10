#!/usr/bin/bash
# If you need FFmpeg get it here: https://ffmpeg.org/download.html

mkdir -p movies sound

for FN in mecha/game/data/movies/*.bik; do
	BN=$(basename $FN .bik)
	ffmpeg -i $FN -c:v theora -c:a libvorbis -format ogg movies/$BN.ogg
done

for FN in mecha/game/data/sound/music*.wav; do
	BN=$(basename $FN .wav)
	ffmpeg -i $FN -c:a libvorbis -format ogg sound/$BN.ogg
done
