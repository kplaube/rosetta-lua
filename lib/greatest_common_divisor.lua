local function gcd(a, b)
    local best = 0

    for i=0, (a + b), 1 do
        if (a % i) == 0 and (b % i) == 0 then
            best = i
        end
    end

    return best
end

return gcd
