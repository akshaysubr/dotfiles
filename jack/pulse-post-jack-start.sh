#!/bin/bash
pactl load-module module-jack-sink channels=2 connect=0
pactl load-module module-jack-source channels=2
pactl set-sink-volume jack_out 75%
pacmd set-default-sink jack_out
pacmd set-default-source jack_in
