local function swap(array, i, j)
    local swap_ = array[i]

    array[i] = array[j]
    array[j] = swap_
end

local function bubble_sort(array)
    local has_changed = true

    while has_changed do
        has_changed = false

        for i=1, #array - 1, 1 do
            if array[i] > array[i + 1] then
                swap(array, i, i + 1)
                has_changed = true
            end
        end
    end
end

return bubble_sort
