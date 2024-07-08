#!/usr/bin/env python3
"""Approximate π."""
import math

from texttable import Texttable

# Number of sides of the polygon inscribing and circumscribing the circle
NUM_SIDES = [6, 12, 24, 48, 96, 100, 1000, 10000, 100000, 1000000]


def main():
    """Approximate π using an inscribed and circumscribed n-sided polygon."""
    pi_approximations = [["n", "n sin π/n", "n tan π/n"]]
    for n in NUM_SIDES:
        # Calculate the approximation for π using the inscribed circle
        sin_approximation = round(n * math.sin(math.pi / n), 10)

        # Calculate the approximation for π using the circumscribed circle
        tan_approximation = round(n * math.tan(math.pi / n), 10)

        # Append a list containing containing the number of sides (n)
        # and the sine and tan approximations to a list
        pi_approximations.append(
            [
                f"{n}",
                f"{sin_approximation:1.10f}",
                f"{tan_approximation:1.10f}",
            ]
        )

    print_table(pi_approximations)


def print_table(pi_approximations):
    """Print a text table containing the approximations."""
    table = Texttable()

    table.set_cols_align(["r", "r", "r"])
    table.set_header_align(["r", "r", "r"])
    table.set_cols_valign(["b", "b", "b"])
    table.set_cols_dtype(["i", "f", "f"])
    table.set_precision(10)  # Prevent truncation of floats
    table.add_rows(pi_approximations)

    print(table.draw())


if __name__ == "__main__":
    main()
