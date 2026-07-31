#!/bin/bash
kitty -o font_size=7.0 --class "pinned" sudo pacman -Syu "$@"
