#!/usr/bin/env -S julia -t 4
# pi_approximations.jl
#
# Author: Nandakumar Chandrasekhar
# Date: 10 July 2024
#
# Approximate π to 10 decimal places by increasing the number
# of sides on an n-sided polygon that inscribes and circumscribes a circle
using PrettyTables

# Number of sides on the polygon inscribing and circumscribing the circle
const NUM_SIDES = [6, 12, 24, 48, 96, 100, 1000, 10000, 100000, 1000000]

function main()
    # Initialize a Matrix with unlimited rows and 5 columns
    pi_approximations = Array{Float64}(undef, 0, 5)

    for n in NUM_SIDES
        θ = π / n

        # Calculate nsinθ
        nsinθ = round(n * sin(θ), sigdigits=11)

        # Calculate ntanθ
        ntanθ = round(n * tan(θ), sigdigits=11)

        # Calculate nsinθcosθ
        nsinθcosθ = round(n * sin(θ) * cos(θ), sigdigits=11)

        # Append a vector containing the number of sides and approximation of π
        pi_approximations = vcat(
            pi_approximations, reshape([n, nsinθ, ntanθ, nsinθcosθ, ntanθ], 1, 5),
        )
    end

    print_table(pi_approximations)
end

function print_table(pi_approximations)
    # Highlight the side column
    hl_side_col = Highlighter(
        f=(data, i, j) -> j == 1,
        crayon=Crayon(foreground=:green),
    )

    # Hightlight the sine approximation column
    hl_sin_col = Highlighter(
        f=(data, i, j) -> j == 2,
        crayon=Crayon(foreground=:cyan),
    )

    # Highlight the tan approximation column
    hl_tan_col = Highlighter(
        f=(data, i, j) -> j == 3,
        crayon=Crayon(foreground=:magenta),
    )

    hl_sin_cos_col = Highlighter(
        f=(data, i, j) -> j == 4,
        crayon=Crayon(foreground=:yellow),
    )

    hl_tan_repeat_col = Highlighter(
        f=(data, i, j) -> j == 5,
        crayon=Crayon(foreground=:magenta),
    )

    # Print a table containing the approximations for π
    pretty_table(
        pi_approximations;
        formatters=(ft_printf("%d", 1), ft_printf("%11.10f", 2:5)),
        header=["n", "nsinθ", "ntanθ", "nsinθcosθ", "ntanθ"],
        highlighters=(
            hl_side_col, hl_sin_col, hl_tan_col, hl_sin_cos_col, hl_tan_repeat_col
        ),
        header_crayon=Crayon(bold=:true),
        crop=:none, # Stop pretty_table from truncating rows
        tf=tf_markdown,
    )
end

main()
