#!/bin/bash

# If .base file does not exist then copy the pristine generated config to .base.
if [ ! -f /etc/openvpn/openvpn.conf.base ]; then
  echo "Copied openvpn.conf as openvpn.conf.base since first run."
  cp /etc/openvpn/openvpn.conf /etc/openvpn/openvpn.conf.base
fi

# Override current config with pestine .base.
cp /etc/openvpn/openvpn.conf.base /etc/openvpn/openvpn.conf

# Dump current interal IP into route file.
ip=$(ifconfig eth0 | grep -oP 'inet addr:\K((\d+\.)+\d+)' | head -n 1)
echo "push \"route $ip 255.255.255.255\"" >> /etc/openvpn/openvpn.conf

cat /etc/openvpn/openvpn.conf
