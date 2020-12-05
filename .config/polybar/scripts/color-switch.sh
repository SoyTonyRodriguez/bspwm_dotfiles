#!/bin/bash

SDIR="$HOME/.config/polybar/scripts"

MENU="$(rofi -sep "|" -dmenu -i -p 'Select' -location 3 -columns 4 -xoffset -10 -yoffset 35 -width 50 -hide-scrollbar -line-padding 4 -padding 20 -lines 10 <<< "♥ amber-dark|♥ blue-dark|♥ blue-grey-dark|♥ brown-dark|♥ cyan-dark|♥ deep-orange-dark|♥ deep-purple-dark|♥ green-dark|♥ grey-dark|♥ indigo-dark|♥ blue-light-dark|♥ green-light-dark|♥ lime-dark|♥ orange-dark|♥ pink-dark|♥ purple-dark|♥ red-dark|♥ teal-dark|♥ yellow-dark")"
            case "$MENU" in
				## Dark Colors
				*amber-dark) $SDIR/colors-dark.sh -amber ;;
				*blue-dark) $SDIR/colors-dark.sh -blue ;;
				*blue-grey-dark) $SDIR/colors-dark.sh -blue-grey ;;
				*brown-dark) $SDIR/colors-dark.sh -brown ;;
				*cyan-dark) $SDIR/colors-dark.sh -cyan ;;
				*deep-orange-dark) $SDIR/colors-dark.sh -deep-orange ;;
				*deep-purple-dark) $SDIR/colors-dark.sh -deep-purple ;;
				*green-dark) $SDIR/colors-dark.sh -green ;;
				*grey-dark) $SDIR/colors-dark.sh -grey ;;
				*indigo-dark) $SDIR/colors-dark.sh -indigo ;;
				*blue-light-dark) $SDIR/colors-dark.sh -light-blue ;;
				*green-light-dark) $SDIR/colors-dark.sh -light-green ;;
				*lime-dark) $SDIR/colors-dark.sh -lime ;;
				*orange-dark) $SDIR/colors-dark.sh -orange ;;
				*pink-dark) $SDIR/colors-dark.sh -pink ;;
				*purple-dark) $SDIR/colors-dark.sh -purple ;;
				*red-dark) $SDIR/colors-dark.sh -red ;;
				*teal-dark) $SDIR/colors-dark.sh -teal ;;
				*yellow-dark) $SDIR/colors-dark.sh -yellow				
            esac
