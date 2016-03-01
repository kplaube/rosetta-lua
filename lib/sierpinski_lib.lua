local mymodule = {}

function mymodule.triangle(number)
    local picture = '*'
    local triangle = {
        [1] = picture
    }
    local new_triangle = {}
    local space
    local x

    for i=1, number, 1 do
        x = 1
        space = string.rep(' ', math.pow(2, i-1))

        for j=1, #triangle, 1 do
            new_triangle[x] = space .. triangle[j] .. space
            x = x + 1
        end

        for j=1, #triangle, 1 do
            new_triangle[x] = triangle[j] .. ' ' .. triangle[j]
            x = x + 1
        end

        triangle = new_triangle
        new_triangle = {}
    end

    return triangle
end

return mymodule
