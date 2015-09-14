wpa_supplicant -D nl80211,wext -i wlp3s0 -c <(wpa_passphrase "KaiYuanTech" "940914940914") &&\
dhcpcd wlp3s0
