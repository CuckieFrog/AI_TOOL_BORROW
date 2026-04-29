import time
import random

print("Krav Camera Observer Active")
print("Monitoring corridor...\n")

events = [
    "No movement",
    "Shadow detected",
    "Footsteps heard",
    "Door movement",
    "Unknown presence"
]

log = []

for i in range(10):
    event = random.choice(events)
    timestamp = time.strftime("%H:%M:%S")
    entry = f"[{timestamp}] {event}"
    
    print(entry)
    log.append(entry)
    
    time.sleep(1)

print("\n--- SESSION LOG ---")
for entry in log:
    print(entry)