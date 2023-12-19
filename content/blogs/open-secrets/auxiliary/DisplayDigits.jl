# display_digits
# Configure REPL display of numbers to display n digits
# after the decimal point during an interactive session.
#
function display_digits(n)
    using Printf
    Base.show(io::IO, f::Float64) = @printf(io, "%.nf", f)
end
