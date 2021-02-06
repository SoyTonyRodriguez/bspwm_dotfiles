#!/bin/bash

PDIR="$HOME/.config/polybar"
LAUNCH="polybar-msg cmd restart"

if  [[ $1 = "-deep-purple" ]]; then

# Replacing colors
sed -i -e 's/shadePrimary = .*/shadePrimary = #311B92/g' $PDIR/colors.ini
sed -i -e 's/shadeSecundary = .*/shadeSecundary = #673AB7/g' $PDIR/colors.ini
sed -i -e 's/bground = .*/bground = #00FFFFFF/g' $PDIR/colors.ini
sed -i -e 's/modulefg-alt = .*/modulefg-alt = #f7f7f7/g' $PDIR/colors.ini

# Restarting polybar
$LAUNCH &

elif  [[ $1 = "-grey" ]]; then
# Replacing colors
sed -i -e 's/shadePrimary = .*/shadePrimary = #212121/g' $PDIR/colors.ini
sed -i -e 's/shadeSecundary = .*/shadeSecundary = #636363/g' $PDIR/colors.ini
sed -i -e 's/bground = .*/bground = #00FFFFFF/g' $PDIR/colors.ini
sed -i -e 's/modulefg-alt = .*/modulefg-alt = #f7f7f7/g' $PDIR/colors.ini

# Restarting polybar
$LAUNCH &

elif  [[ $1 = "-fondo" ]]; then
# Replacing colors
# sed -i -e 's/shadePrimary = .*/shadePrimary = #246476/g' $PDIR/colors.ini
sed -i -e 's/shadePrimary = .*/shadePrimary = #29758a/g' $PDIR/colors.ini
sed -i -e 's/shadeSecundary = .*/shadeSecundary = #36206b/g' $PDIR/colors.ini
sed -i -e 's/bground = .*/bground = #00FFFFFF/g' $PDIR/colors.ini
sed -i -e 's/modulefg-alt = .*/modulefg-alt = #f7f7f7/g' $PDIR/colors.ini
# Restarting polybar
$LAUNCH &


else
echo "Available options:
-amber		-blue			-blue-grey		-brown
-cyan		-deep-orange		-deep-purple		-green
-grey		-indigo			-light-blue		-light-green
-lime		-orange			-pink			-purple
-red		-teal			-yellow"
fi
