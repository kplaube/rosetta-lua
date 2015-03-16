local factorial = {}

function factorial:factorial(number)
    if number == 0 then
        return 1
    end

    return number * factorial:factorial(number - 1)
end

return factorial
