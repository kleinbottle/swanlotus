function fibsum3(maxval)
    prev, current = 0, 1
    accum = prev
    prev, current = prev + current, prev + 2current
    while current <= maxval
        accum += current
        prev, current = prev + 2current, 2prev + 3current
    end
    return accum
end

result=fibsum3(4000000)
println(result)
