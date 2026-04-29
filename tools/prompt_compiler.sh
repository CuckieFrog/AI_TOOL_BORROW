#!/data/data/com.termux/files/usr/bin/bash

echo "Prompt Compiler"
echo "Enter lines (type 'done' to finish):"

PROMPT=""

while true; do
    read line
    [ "$line" = "done" ] && break
    PROMPT="$PROMPT $line"
done

echo ""
echo "Compiled Prompt:"
echo "$PROMPT"