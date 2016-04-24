local function swap(array, index1, index2)
    local _ = array[index1]
    array[index1] = array[index2]
    array[index2] = _
end

local function partition(array, p, r)
    local pivot = math.random(p, r)
    local q = p

    swap(array, pivot, r)

    for u=p, r - 1, 1 do
        if array[u] <= array[r] then
            swap(array, u, q)
            q = q + 1
        end
    end

    swap(array, q, r)

    return q
end

local function quicksort(array, p, r)
    if p >= r then
        return
    end

    local q = partition(array, p, r)
    quicksort(array, p, q - 1)
    quicksort(array, q + 1, r)
end

return quicksort
