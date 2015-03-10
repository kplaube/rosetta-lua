package.path = package.path .. ';./lib/?.lua'

describe('Insertion sort', function()
    setup(function()
        sorting = require('sorting_lib')
    end)

    it('should return the array as it is when it is sorted', function()
        local array = {1, 2, 3, 4, 5}
        local response = sorting:insertion_sort(array)

        assert.are.same(response, array)
    end)

    it('should return the array even if it has only one iteration', function()
        local response = sorting:insertion_sort({42})

        assert.are.same({42}, response)
    end)

    it('should sort using insertion sort', function()
        local response = sorting:insertion_sort({10, -1, 20, 40, 1})

        assert.are.same({-1, 1, 10, 20, 40}, response)
    end)

    it('should sort even if the first element is the minimum value', function()
        local response = sorting:insertion_sort({1, 3, 2, 4})

        assert.are.same({1, 2, 3, 4}, response)
    end)

end)
