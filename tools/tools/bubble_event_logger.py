import json, time, os

log_path = os.path.expanduser("~/borrow-system/logs/bubble_events.jsonl")

print("[Bubble Event Logger]")
event = input("Event label: ")
source = input("Source/sensor/tool: ")
notes = input("Notes: ")

record = {
    "ts": time.time(),
    "time": time.strftime("%Y-%m-%d %H:%M:%S"),
    "event": event,
    "source": source,
    "notes": notes
}

os.makedirs(os.path.dirname(log_path), exist_ok=True)

with open(log_path, "a") as f:
    f.write(json.dumps(record) + "\n")

print(f"Saved to {log_path}")