#!/bin/bash

#get list of IP and MAC addresses from cache
arpOutput=$(arp -a)

#filter only IP addresses 
ipAddresses=$(echo "$arpOutput" | awk '{print $2}')

macAddresses=$(echo "$arpOutput" | awk '{print $4}')

echo "detected Devices"
echo "----------------"
echo "IP Address      MAC Adress"
echo "----------------"
paste <(echo "$ipAddresses") <(echo "$macAddresses")
echo "----------------"
