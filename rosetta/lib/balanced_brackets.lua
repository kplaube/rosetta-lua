local mymodule = {}

function mymodule.balanced_brackets(input)
    local stack = {}

    for i=1, #input do
        local char = input:sub(i, i)

        if char == '[' then
            table.insert(stack, 1, char)
        elseif char == ']' then
            local cmp_char = table.remove(stack, 1)

            if cmp_char ~= '[' then
                return 'NOT OK'
            end
        end
    end

    if #stack > 0 then
        return 'NOT OK'
    end

    return 'OK'
end

return mymodule
