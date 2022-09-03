# Magisk WiFi Bonding
![Status](https://img.shields.io/badge/status-In_Process-gren.png)
![Bug](https://img.shields.io/badge/Bug-1-red.png)
![Updates](https://img.shields.io/badge/Update-1-gren.png)
![Releases](https://img.shields.io/github/v/release/ViniciusRed/WiFi_Bonding?color=gren&display_name=tag)
![Download](https://img.shields.io/github/downloads/ViniciusRed/WiFi_Bonding/total)
Double your bandwith on your devices!

## Details

By default, some devices provided an ini file to control the wifi behavior. This module modified the `WCNSS_qcom_cfg.ini` in order to support 40mhz.

- Make 2.4Ghz/5Ghz WiFi running at 40Mhz enabled.
```
gChannelBondingMode24GHz=1
gChannelBondingMode5GHz=1
```

- Make forced WiFi antenna 1T1R on MTK solution AP disabled. 
```
gForce1x1Exception=0
```

### Official Module Creator

Creator Github: [GitHub](https://github.com/Magisk-Modules-Repo/wifi-bonding)
