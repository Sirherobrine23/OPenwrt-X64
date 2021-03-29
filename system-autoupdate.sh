#!/bin/sh
#
OPENVERSION=$(wget -qO- https://api.github.com/repos/Sirherobrine23/OPenwrt-X64/releases | grep -o '"tag_name": ".*"' | head -n 1 | sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
[ -z $OPENVERSION ] && exit 1

# VERSIOSS=$(wget -qO- http://api.github.com/repos/Sirherobrine23/OPenwrt-X64/releases | grep -o '"browser_download_url": ".*"' | grep 'sysupgrade' | grep '.bin' | head -n 1 | sed 's/"//g;s/v//g' | sed 's/browser_download_url: //g')

#sysupgrade -c "https://github.com/Sirherobrine23/WR941NDv3-OpenWRTBuild/releases/download/${OPENVERSION}/"
exit 0