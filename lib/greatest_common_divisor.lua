--[[local function gcd(a, b)]]
    --local best = 0

    --for i=0, (a + b), 1 do
        --if (a % i) == 0 and (b % i) == 0 then
            --best = i
        --end
    --end

    --return best
--end

local function euclideanGcd(a, b)
    if b == 0 then
        return a
    end

    return euclideanGcd(b, (a % b))
end

return euclideanGcd
