# #!/usr/bin/env sh

# # set variables

# ScrDir=`dirname "$(realpath "$0")"`
# source $ScrDir/globalcontrol.sh
# dstDir="${XDG_CONFIG_HOME:-$HOME/.config}/dunst"

# # regen conf

# cat "$dstDir/dunst.conf" "$dstDir/Wall-Dcol.conf" > "$dstDir/dunstrc"
# killall dunst
# dunst &

#!/usr/bin/env sh

# set variables

scrDir=`dirname "$(realpath "$0")"`
source $scrDir/globalcontrol.sh
dstDir="${confDir}/dunst"

# regen conf

export hypr_border
envsubst < "${dstDir}/dunst.conf" > "${dstDir}/dunstrc"
envsubst < "${dstDir}/wallbash.conf" >> "${dstDir}/dunstrc"
killall dunst
dunst &