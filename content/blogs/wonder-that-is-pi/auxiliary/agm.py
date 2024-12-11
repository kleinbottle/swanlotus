from math import sqrt

def agm(a0, g0, tolerance=1.0e-12):
    """
    Calculating the arithmetic-geometric mean of two numbers a0, g0.

    tolerance     the tolerance for the converged 
                  value of the arithmetic-geometric mean
                  (default value = 1e-22)
    """
    an, gn = (a0 + g0) / 2.0, sqrt(a0 * g0)
    n = 0
    while abs(an - gn) > tolerance:
        an, gn = (an + gn) / 2.0, sqrt(an * gn)
        print(n, an, gn)
        n+=1
    return (1/an)

agm(1, sqrt(2))
