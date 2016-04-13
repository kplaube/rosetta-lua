package.path = package.path .. ';./lib/?.lua'

describe('Counting sort', function()
    local sorting

    setup(function()
        sorting = require('sorting_lib')
    end)

    it('should return the array as it is when it is sorted', function()
        local array = {1, 2, 3, 4, 5}
        sorting.counting_sort(array, 1, #array)

        assert.are.same({1, 2, 3, 4, 5}, array)
    end)

    it('should return the array even if it has only one item', function()
        local array = {42}
        sorting.counting_sort(array, 1, 1)

        assert.are.same({42}, array)
    end)

    it('should sort using counting sort', function()
        local array = {10, 1, 20, 40, 1}
        sorting.counting_sort(array, 1, #array)

        assert.are.same({1, 1, 10, 20, 40}, array)
    end)

    it('should sort even if it has negative values', function()
        local array = {1, -3, 2, 4}
        sorting.counting_sort(array)

        assert.are.same({-3, 1, 2, 4}, array)
    end)

end)
