#!/data/data/com.termux/files/usr/bin/bash

echo "Sensor Watch Active..."

while true; do
    termux-sensor -n 1 accelerometer | jq '.values[0]'
    sleep 2
done