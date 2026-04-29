#!/data/data/com.termux/files/usr/bin/bash

echo "[Local Network Inventory - authorised networks only]"
echo ""

echo "IP route:"
ip route

echo ""
echo "Interfaces:"
ip addr show wlan0 2>/dev/null || ip addr

echo ""
echo "ARP/neighbour table:"
ip neigh

echo ""
read -p "Run light local ping sweep with nmap? y/N: " ans
if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
  pkg install nmap -y >/dev/null 2>&1
  SUBNET=$(ip route | awk '/wlan0/ && /src/ {print $1; exit}')
  [ -z "$SUBNET" ] && SUBNET="192.168.1.0/24"
  echo "Scanning $SUBNET"
  nmap -sn "$SUBNET"
fi