#!/usr/bin/env python3
import math

POLYGON_SIDES = [6, 12, 24, 48, 96, 100, 1000, 10000, 100000, 1000000]

def main():
    for n in POLYGON_SIDES:
        sine_val = round(n * math.sin(math.pi/n), 10)
        tan_val = round(n * math.tan(math.pi/n), 10)
        values = " | ".join([
            f"${n}$",
            "${0:1.10f}$".format(sine_val),
            "${0:1.10f}$".format(tan_val),
        ])

        print(f"| {values} |")

if __name__ == "__main__":
    main()
