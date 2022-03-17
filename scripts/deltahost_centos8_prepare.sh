#!/bin/sh
echo "PUT First IPv6 address: (EXPAMPLE: 2a04:a2sa:2:1::)"
read IPV6ADDR
echo "PUT GATEWAY (EXPAMPLE: 2a04:6ac1::2)"
read IPV6GATEWAY

main_interface=$(ip route get 8.8.8.8 | awk -- '{printf $5}')
echo ${main_interface}

echo IPV6INIT="yes" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_AUTOCONF="no" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_DEFROUTE="yes" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_FAILURE_FATAL="no" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6ADDR="${IPV6ADDR}/32" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
echo IPV6_DEFAULTGW="${IPV6GATEWAY}" >> /etc/sysconfig/network-scripts/ifcfg-${main_interface}
