#!/bin/bash

pkill -u $USER -USR1 dunst
betterlockscreen --off 1 --lock dim
pkill -u $USER -USR2 dunst
