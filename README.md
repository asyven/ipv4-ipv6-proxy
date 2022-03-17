Redirect connections from different ports at one ipv4 address to unique random ipv6 address from \64 subnetwork. Based on 3proxy

## Requirements
- Centos 8
- Ipv6 \64

## Installation
1. `bash <(curl -s "https://raw.githubusercontent.com/asyven/ipv4-ipv6-proxy/master/scripts/deltahost_centos8_prepare.sh")`
2. `reboot`
3. `bash <(curl -s "https://raw.githubusercontent.com/asyven/ipv4-ipv6-proxy/master/scripts/deltahost_centos8.sh")`
4. After installation dowload the file `proxy.zip`
   * File structure: `IP4:PORT:LOGIN:PASS`
   * You can use this online [util](http://buyproxies.org/panel/format.php
) to change proxy format as you like

## Test your proxy

Install [FoxyProxy](https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/) in Firefox
![Foxy](foxyproxy.png)

Open [ipv6-test.com](http://ipv6-test.com/) and check your connection
![check ip](check_ip.png)
