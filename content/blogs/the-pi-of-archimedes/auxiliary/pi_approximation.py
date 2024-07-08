#!/usr/bin/env python3
"""Approximate π."""
import math

NUM_SIDES = [6, 12, 24, 48, 96, 100, 1000, 10000, 100000, 1000000]


def main():
    """Approximate π by increasing the number of sides on a polygon."""
    approximations = [["n", "n sin π/n", "n tan π/n"]]
    for n in NUM_SIDES:
        sin_approximation = round(n * math.sin(math.pi / n), 10)
        tan_approximation = round(n * math.tan(math.pi / n), 10)
        approximations.append(
            [
                f"{n}",
                f"{sin_approximation:1.10f}",
                f"{tan_approximation:1.10f}",
            ]
        )
    print_table(approximations)


def print_table(data):
    """Print a table containing the given data."""
    # Find the maximum width of each column
    col_widths = [max(len(str(item)) for item in col) for col in zip(*data)]

    # Create a format string for each row
    format_str = " | ".join(f"{{:{width}}}" for width in col_widths)

    # Print each row
    row_str = None
    for i, row in enumerate(data):
        row_str = "|" + format_str.format(*row) + "|"
        print(row_str)
        if i == 0:
            # Print a separator after the header row
            print("|" + "-" * (len(row_str) - 2) + "|")

    # Print a line after at the end of the table
    print("-" * len(row_str))


if __name__ == "__main__":
    main()
