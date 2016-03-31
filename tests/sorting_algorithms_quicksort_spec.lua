package.path = package.path .. ';./lib/?.lua'

describe('Quicksort', function()
    local sorting = require('sorting_lib')

    it('should return the array as it is when it is sorted', function()
        local input = {1, 2, 3, 4, 5}
        local expected = {1, 2, 3, 4, 5}

        sorting.quicksort(input, 1, #input)

        assert.are.same(expected, input)
    end)

    it('should return the array even if it has only one item', function()
        local input = {42}
        local expected = {42}

        sorting.quicksort(input, 1, #input)

        assert.are.same(expected, input)
    end)

    it('should sort using quicksort', function()
        local input = {10, -1, 20, 40, 1}
        local expected = {-1, 1, 10, 20, 40}

        sorting.quicksort(input, 1, #input)

        assert.are.same(expected, input)
    end)

    it('should sort even in a decrescent order', function()
        local input = {3, 2, 1}
        local expected = {1, 2, 3}

        sorting.quicksort(input, 1, #input)

        assert.are.same(expected, input)
    end)
end)
