#!/data/data/com.termux/files/usr/bin/bash

echo "[Bubble EM Probe]"
echo "Requires Termux:API app + pkg install termux-api jq"
echo ""

termux-sensor -l | grep -Ei "magnet|gyro|accel|gravity"

echo ""
echo "Reading magnetometer. Ctrl+C to stop."
termux-sensor -s magnetometer -d 500