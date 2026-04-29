#!/data/data/com.termux/files/usr/bin/bash

QUERY="$*"

if echo "$QUERY" | grep -Eiq "electro|magnet|emf|field"; then
  borrow em_probe
elif echo "$QUERY" | grep -Eiq "heart|pulse|biometric"; then
  borrow heartbeat_lab
elif echo "$QUERY" | grep -Eiq "ip|network|wifi|device|router"; then
  borrow network_inventory
elif echo "$QUERY" | grep -Eiq "file|hash|metadata|exif|string"; then
  borrow forensic_file_triage
elif echo "$QUERY" | grep -Eiq "bubble|log|memory|event"; then
  borrow bubble_event_logger
else
  echo "No confident match. Opening picker..."
  borrow
fi