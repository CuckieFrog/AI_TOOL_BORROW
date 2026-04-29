import time, random, statistics

print("[Heartbeat Lab - consent/simulation mode]")
print("This is for training baselines, not secret identification.\n")

samples = []
for i in range(20):
    bpm = random.gauss(72, 4)
    samples.append(bpm)
    print(f"{time.strftime('%H:%M:%S')} | simulated_bpm={bpm:.1f}")
    time.sleep(0.3)

print("\nBaseline:")
print(f"avg={statistics.mean(samples):.1f}")
print(f"min={min(samples):.1f}")
print(f"max={max(samples):.1f}")
print(f"stdev={statistics.stdev(samples):.2f}")