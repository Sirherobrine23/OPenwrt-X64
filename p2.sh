#!/bin/bash
sed -i 's|192.168.1.1|192.168.3.1|g' "${Openwrt_path}/package/base-files/files/bin/config_generate"

#Hostaname
sed -i 's|OpenWrt|OpenWrtX64|g' "${Openwrt_path}/package/base-files/files/bin/config_generate"

#NTP Server Brazil
sed -i 's|0.openwrt.pool.ntp.org|a.st1.ntp.br|g' "${Openwrt_path}/package/base-files/files/bin/config_generate"
sed -i 's|1.openwrt.pool.ntp.org|b.st1.ntp.br|g' "${Openwrt_path}/package/base-files/files/bin/config_generate"
sed -i 's|2.openwrt.pool.ntp.org|c.st1.ntp.br|g' "${Openwrt_path}/package/base-files/files/bin/config_generate"
sed -i 's|3.openwrt.pool.ntp.org|d.st1.ntp.br|g' "${Openwrt_path}/package/base-files/files/bin/config_generate"

#OpenWRT Wireless Activated
sed -i 's|set wireless.radio${devidx}.disabled=1|set wireless.radio${devidx}.disabled=0|g' "${Openwrt_path}/package/kernel/mac80211/files/lib/wifi/mac80211.sh"

(
    cd "${Openwrt_path}/package/base-files/files/etc/";
    mkdir crontabs && cd crontabs;
    echo 'root' > cron.update
    echo '* 23 * * * echo' > root
)


cp -fv "${Home_path}/system-autoupdate.sh" "${Openwrt_path}/package/base-files/files/bin/system-autoupdate"
chmod a+x "${Openwrt_path}/package/base-files/files/bin/system-autoupdate"

cp -fv "${Home_path}/banner" "${Openwrt_path}/package/base-files/files/etc/banner"
