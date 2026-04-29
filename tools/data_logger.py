import time
import random

print("Data Logger Active\n")

for i in range(10):
    value = random.uniform(0, 100)
    timestamp = time.time()
    
    print(f"{timestamp}: {value}")
    
    time.sleep(1)