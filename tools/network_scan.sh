#!/data/data/com.termux/files/usr/bin/bash

echo "Local Network Scan"

ip route | grep wlan0

echo "Scanning..."
nmap -sn 192.168.1.0/24