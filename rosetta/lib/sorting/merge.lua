local function fill_array(a, i, j)
    local k = 1
    local my_a = {}

    for l=i, j, 1 do
        my_a[k] = a[l]
        k = k + 1
    end
    my_a[k] = math.huge -- an infinite value

    return my_a
end

local function merge(array, p, q, r)
    local left = fill_array(array, p, q)
    local right = fill_array(array, q + 1, r)

    local i = 1
    local j = 1

    for k=p, r, 1 do
        if left[i] <= right[j] then
            array[k] = left[i]
            i = i + 1
        else
            array[k] = right[j]
            j = j + 1
        end
    end
end

local function merge_sort(array, p, r)
    if p >= r then
        return
    end

    local q = math.floor((p + r) / 2)

    merge_sort(array, p, q)
    merge_sort(array, q + 1, r)

    merge(array, p, q, r)
end

return merge_sort
