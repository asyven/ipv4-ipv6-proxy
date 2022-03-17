#!/bin/sh
echo "PUT SUBNET (EXPAMPLE: 2a04:a2sa:2:1::/32)"
read IPV6SUBNET
echo "PUT GATEWAY (EXPAMPLE: 2a04:6ac1::2)"
read IPV6GATEWAY

main_interface=$(ip route get 8.8.8.8 | awk -- '{printf $5}')
echo ${main_interface}

echo IPV6INIT="yes" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_AUTOCONF="no" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_DEFROUTE="yes" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_FAILURE_FATAL="no" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6ADDR="\"${IPV6SUBNET}\"" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_DEFAULTGW="\"${IPV6GATEWAY}\"" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo NM_CONTROLLED="no" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
sudo systemctl start NetworkManager.restart
ifup eth0
