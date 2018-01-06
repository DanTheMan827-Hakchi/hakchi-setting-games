#!/bin/sh
#
# Script by Daniel Radtke <DanTheMan827>
#
source /etc/preinit
script_init

script_path="$(dirname "$0")"

decodepng "$script_path/3.png" > /dev/fb0; sleep 1
decodepng "$script_path/2.png" > /dev/fb0; sleep 1
decodepng "$script_path/1.png" > /dev/fb0; sleep 1

buttons="$(cat /dev/clovercon1)"
cfg_clovercon_home_combination="0x${buttons:2:2}${buttons:0:2}"

save_config