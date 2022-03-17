#!/bin/sh
echo "PUT SUBNET (EXPAMPLE: 2a04:a2sa:2:1::/32)"
read IPV6SUBNET
echo "PUT GATEWAY (EXPAMPLE: 2a04:6ac1::2)"
read IPV6GATEWAY

main_interface=$(ip route get 8.8.8.8 | awk -- '{printf $5}')
main_interface=${main_interface}

