#!/bin/sh
#
# Script by Daniel Radtke <DanTheMan827>
#
source /etc/preinit
script_init

script_path="$(dirname "$0")"

if [ "$cfg_clovercon_fc_start" != "1" ]; then
  cfg_clovercon_fc_start=1
  decodepng "$script_path/enabled.png" > /dev/fb0
else
  cfg_clovercon_fc_start=0
  decodepng "$script_path/disabled.png" > /dev/fb0
fi

save_config
sleep 1