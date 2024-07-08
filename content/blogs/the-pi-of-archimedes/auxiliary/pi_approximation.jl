#!/usr/bin/env -S julia -t 4
# Approximate π
using Printf
using Pkg

# Install the PrettyTables package
Pkg.add("PrettyTables")
using PrettyTables

const NUM_SIDES = [6, 12, 24, 48, 96, 100, 1000, 10000, 100000, 1000000]

function main()
    # Initialize a Float Matrix with unlimited rows and 3 columns
    data = Array{Float64}(undef, 0, 3)

    for n in NUM_SIDES
        # Calculate the approximation for π using sine
        sin_approximation = round(n * sin(pi / n), sigdigits=11)

        # Calculate the approximation for π using sine
        tan_approximation = round(n * tan(pi / n), sigdigits=11)

        # Append a vector containing the number of sides (n)
        # and the sine and tan approximations
        data = vcat(data, reshape([n, sin_approximation, tan_approximation], 1, 3))
    end

    print_table(data)
end

function print_table(data)
    # Highlight the side column
    hl_side_col = Highlighter(
        f=(data, i, j) -> j == 1,
        crayon=Crayon(foreground=:green)
    )

    # Hightlight the sine approximation column
    hl_sin_col = Highlighter(
        f=(data, i, j) -> j == 2,
        crayon=Crayon(foreground=:cyan)
    )

    # Highlight the tan approximation column
    hl_tan_col = Highlighter(
        f=(data, i, j) -> j == 3,
        crayon=Crayon(foreground=:magenta)
    )

    # Print a table containing the approximations for π
    pretty_table(
        data;
        formatters=(ft_printf("%d", 1), ft_printf("%11.10f", 2:3)), # Format specifiers
        header=["n", "n sin π/n", "n tan π/n"],
        highlighters=(hl_side_col, hl_sin_col, hl_tan_col), # Column value color
        header_crayon=Crayon(foreground=:yellow, bold=:true), # Header row color
        crop=:none # Stop pretty_table from truncating rows
    )
end

main()
