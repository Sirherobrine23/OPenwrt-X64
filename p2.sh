#!/bin/bash
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#Hostaname
sed -i 's/OpenWrt/c1/g' package/base-files/files/bin/config_generate
#NTP Server Brazil
sed -i 's/0.openwrt.pool.ntp.org/a.st1.ntp.br/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/b.st1.ntp.br/g' package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/c.st1.ntp.br/g' package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/d.st1.ntp.br/g' package/base-files/files/bin/config_generate
#OpenWRT Wireless Activated
sed -i 's/set wireless.radio${devidx}.disabled=1/set wireless.radio${devidx}.disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio${devidx}.ssid=Openwrt-GENERIC/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# meus pacotes
# cp ../internet-status.sh package/base-files/files/bin/status;chmod +x package/base-files/files/bin/status;chmod 775 package/base-files/files/bin/status
# cp ../system-autoupdate.sh package/base-files/files/bin/system-autoupdate;chmod +x package/base-files/files/bin/system-autoupdate;chmod 775 package/base-files/files/bin/system-autoupdate
# init status
# echo "status &" > package/base-files/files/etc/rc.local
# echo 'system-autoupdate' >> package/base-files/files/etc/rc.local
# echo 'exit 0' >> package/base-files/files/etc/rc.local

# cp -rfv ../ package/base-files/files/etc/banner
