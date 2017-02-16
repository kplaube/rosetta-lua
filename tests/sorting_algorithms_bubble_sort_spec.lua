package.path = package.path .. ';./rosetta/lib/?.lua'

describe('Bubble sort', function()
    local sorting = require('sorting')

    it('should return the array as it is when it is sorted', function()
        local input = {1, 2, 3, 4}
        local expected = {1, 2, 3, 4}

        sorting.bubble_sort(input)

        assert.are.same(expected, input)
    end)

    it('should return the array even if it has only one item', function()
        local input = {42}
        local expected = {42}

        sorting.bubble_sort(input)

        assert.are.same(expected, input)
    end)

    it('should sort using bubble sort', function()
        local input = {3, 2, 1}
        local expected = {1, 2, 3}

        sorting.bubble_sort(input)

        assert.are.same(expected, input)
    end)

    it('should sort even with negative values', function()
        local input = {10, -1, 20, 40, 1}
        local expected = {-1, 1, 10, 20, 40}

        sorting.bubble_sort(input)

        assert.are.same(expected, input)
    end)
end)
