#!/bin/sh
# Originally written by miko
# Modified by dodslaser
. /home/osmc/.kodi/userdata/addon_data/script.moonlight-embedded/moonlight-osmc.conf
sudo moonlight pair $MOONLIGHT_IP
sudo moonlight stream $MOONLIGHT_IP $MOONLIGHT_LAUNCHOPTS
