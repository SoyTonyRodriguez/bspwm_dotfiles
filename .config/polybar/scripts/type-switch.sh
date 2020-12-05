#!/bin/bash

SDIR="$HOME/.config/polybar/scripts"

MENU="$(rofi -sep "|" -dmenu -i -p 'Select' -location 3 -columns 1 -xoffset -10 -yoffset 35 -width 10 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 <<< "♥ Type-1|♥ Type-2|♥ Type-3|♥ Type-4")"
            case "$MENU" in
				## Light Colors
				*Type-1) $SDIR/type.sh -type-1 ;;
				*Type-2) $SDIR/type.sh -type-2 ;;
				*Type-3) $SDIR/type.sh -type-3 ;;
				*Type-4) $SDIR/type.sh -type-4 ;;
            esac
