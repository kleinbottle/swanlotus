using Printf
using Pkg

# Install the PrettyTables package
Pkg.add("PrettyTables", io=devnull)
using PrettyTables

const K = [0, 1, 2, 3, 4]
const N_0 = 6
const θ_0 = 30

function main()
    pi_approximations = Array{Any}(undef, 0, 6)
    for k in K
        if k == 0
            θ_with_degree_sym = string(θ_0) * string('°')
            pi_approximations = vcat(
                reshape([k, 2^k, N_0, θ_with_degree_sym, N_0 * sind(θ_0), N_0 * tand(θ_0)], 1, 6)
            )
        else
            n = 2^k * N_0
            θ = θ_0 / 2^k
            sine_val = n * √((1 - cosd(θ_0 / 2^(k - 1))) / 2)
            tan_val = n * √((1 - cosd(θ_0 / 2^(k - 1))) / (1 + cosd(θ_0 / 2^(k - 1))))
            θ_with_degree_sym = string(θ) * string('°')
            pi_approximations = vcat(
                pi_approximations, reshape([k, 2^k, n, θ_with_degree_sym, sine_val, tan_val], 1, 6)
            )
        end
    end

    print_table(pi_approximations)
end

function print_table(pi_approximations)
    # Highlight the side column
    hl_side_col = Highlighter(
        f=(data, i, j) -> j == 4,
        crayon=Crayon(foreground=:green)
    )

    # Hightlight the sine approximation column
    hl_sin_col = Highlighter(
        f=(data, i, j) -> j == 5,
        crayon=Crayon(foreground=:cyan)
    )

    # Highlight the tan approximation column
    hl_tan_col = Highlighter(
        f=(data, i, j) -> j == 6,
        crayon=Crayon(foreground=:magenta)
    )

    # Print a table containing the approximations for π
    pretty_table(
        pi_approximations;
        formatters=(ft_printf("%d", 1:3), ft_printf("%11.10f", 4:6)), # Format specifiers
        header=["k", "2^k", "n", "θ", "nsinθ", "ntanθ"],
        highlighters=(hl_side_col, hl_sin_col, hl_tan_col), # Column value color
        header_crayon=Crayon(foreground=:yellow, bold=:true), # Header row color
        crop=:none, # Stop pretty_table from truncating rows
        tf=tf_markdown
    )
end

main()
