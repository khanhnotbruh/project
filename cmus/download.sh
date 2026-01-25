#!/usr/bin/env bash

music_path="$HOME/Music/cmus"
music_format="mp3"
cookies="/mnt/c/Users/khanh/Downloads/cookies.txt"

music_url=(
    "https://youtu.be/Z5NoQg8LdDk?si=Q_xeHtBZynljgH5Q"
    "https://youtu.be/FGM3U3buQj0?si=9V00puEPWIWZIFVb"
)

music_name=(
    "playing_god"
    "classical_dragon"
)

mkdir -p "$music_path"

for i in "${!music_name[@]}"; do
    name="${music_name[$i]}"
    url="${music_url[$i]}"
    path="$music_path/$name.$music_format"

    if [ -f "$path" ]; then
        echo "✅ Already downloaded: $name"
    else
        echo "⬇️ Downloading: $name"

        yt-dlp \
            --cookies "$cookies" \
            -x --audio-format "$music_format" \
            -o "$path" \
            "$url"

    fi
done
