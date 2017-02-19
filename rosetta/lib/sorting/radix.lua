local function radix(array)
    local RADIX = 10
    local max_reached = false
    local placement = 1

    local index
    local buckets = {}

    while not max_reached do
        max_reached = true
        buckets = {}

        for i=0, RADIX, 1 do
            buckets[i] = {}
        end

        for i=1, #array, 1 do
            local item = array[i]
            index = math.floor(item / placement)

            if buckets[index % RADIX] == nil then
                buckets[index % RADIX] = {item}
            else
                table.insert(buckets[index % RADIX], item)
            end

            if max_reached and index > 0 then
                max_reached = false
            end
        end

        local k = 1
        for i=0, RADIX, 1 do
            local bucket = buckets[i]
            for j=1, #bucket, 1 do
                local item = bucket[j]
                array[k] = item
                k = k + 1
            end
        end

        placement = placement * RADIX
    end
end

return radix
