print("Force Scenario Calculator\n")

mass = float(input("Enter mass (kg): "))
acceleration = float(input("Enter acceleration (m/s^2): "))

force = mass * acceleration

print(f"\nCalculated Force: {force} N")

if force < 50:
    print("Low force scenario")
elif force < 200:
    print("Moderate force scenario")
else:
    print("High force scenario")