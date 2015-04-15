function is_even(number)
    return number % 2 == 0
end

function custom_pow(number, expoent)
    if expoent == 1 then
        return number
    end

    if expoent == 0 then
        return 1
    end

    if expoent < 0 then
        return 1 / custom_pow(number, -expoent)
    end

    if is_even(expoent) then
        local result = custom_pow(number, expoent / 2)
        return result * result
    end

    return number * custom_pow(number, expoent - 1)
end
