#!/data/data/com.termux/files/usr/bin/bash

echo "[Forensic File Triage]"
read -p "File path: " FILE

if [ ! -f "$FILE" ]; then
  echo "File not found."
  exit 1
fi

echo ""
echo "SHA256:"
sha256sum "$FILE"

echo ""
echo "File type:"
file "$FILE"

echo ""
echo "Metadata:"
exiftool "$FILE" 2>/dev/null | head -40

echo ""
echo "Readable strings preview:"
strings "$FILE" | head -40