local mymodule = {}

function mymodule.is_even(number)
    return number % 2 == 0
end

function mymodule.custom_pow(number, expoent)
    if expoent == 1 then
        return number
    end

    if expoent == 0 then
        return 1
    end

    if expoent < 0 then
        return 1 / mymodule.custom_pow(number, -expoent)
    end

    if mymodule.is_even(expoent) then
        local result = mymodule.custom_pow(number, expoent / 2)
        return result * result
    end

    return number * mymodule.custom_pow(number, expoent - 1)
end

return mymodule
