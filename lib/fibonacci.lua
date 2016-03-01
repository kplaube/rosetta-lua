local mymodule = {}

function mymodule.recursive(n)
    if n <= 1 then
        return n
    end

    return mymodule.recursive(n - 1) + mymodule.recursive(n - 2)
end

function mymodule.optimized(n)
    local fib = {
        0, 1
    }

    if n <= 1 then
        return fib[n + 1]
    end

    for i=2, n, 1 do
        fib[i + 1] = fib[i] + fib[i - 1]
    end

    return fib[#fib]
end

return mymodule
