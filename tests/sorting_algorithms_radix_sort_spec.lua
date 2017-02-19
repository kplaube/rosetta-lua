package.path = package.path .. ';./rosetta/lib/?.lua'

describe('Radix sort', function()
    local sorting = require('sorting')

    it('should return the array as it is when it is sorted', function()
        local input = {1, 2, 3, 4, 5}
        local expected = {1, 2, 3, 4, 5}

        sorting.radix_sort(input)

        assert.are.same(expected, input)
    end)

    it('should return the array even if it has only one item', function()
        local input = {42}
        local expected = {42}

        sorting.radix_sort(input)

        assert.are.same(expected, input)
    end)

    it('should sort using radix', function()
        local input = {2, 1, 3}
        local expected = {1, 2, 3}

        sorting.radix_sort(input)

        assert.are.same(expected, input)
    end)

    it('should sort decimals using radix', function()
        local input = {2, 10, 3, 20}
        local expected = {2, 3, 10, 20}

        sorting.radix_sort(input)

        assert.are.same(expected, input)
    end)

    it('should sort with a hundred', function()
        local input = {2, 1, 100, 50, 110, 20}
        local expected = {1, 2, 20, 50, 100, 110}

        sorting.radix_sort(input)

        assert.are.same(expected, input)
    end)
end)
