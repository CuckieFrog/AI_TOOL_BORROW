import time
import random

print("Reaction Timer - Stay Ready...\n")

delay = random.uniform(2, 5)
time.sleep(delay)

print("GO!")

start = time.time()
input()
end = time.time()

reaction = end - start

print(f"\nReaction Time: {reaction:.3f} seconds")

if reaction < 0.25:
    print("Elite response")
elif reaction < 0.5:
    print("Good response")
else:
    print("Too slow")