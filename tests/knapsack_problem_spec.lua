package.path = package.path .. ';./lib/?.lua'

describe('Knapsack problem', function()
    local knapsack = require('knapsack')

    it('should bring all items when the knapsack capacity is bigger than item weight', function()
        local items = {
            {'a', 1, 1},
            {'b', 2, 2},
            {'c', 3, 3}
        }
        local expected = {
            {'a', 1, 1},
            {'b', 2, 2},
            {'c', 3, 3}
        }
        local response = knapsack.resolve(items, 10)

        assert.are.same(expected, response)
    end)

    it('should bring just items that fits inside knapsack', function()
        local items = {
            {'a', 1, 1},
            {'b', 2, 2},
            {'c', 3, 3}
        }
        local expected = {
            {'a', 1, 1},
            {'b', 2, 2}
        }
        local response = knapsack.resolve(items, 3)

        assert.are.same(expected, response)
    end)

    it('should bring just items items that fits inside knapsack, following the weight per value', function()
        local items = {
            {'map', 9, 150},
            {'socks', 4, 50},
            {'umbrella', 73, 40}
        }
        local expected = {
            {'map', 9, 150},
            {'socks', 4, 50}
        }
        local response = knapsack.resolve(items, 40)

        assert.are.same(expected, response)
    end)
end)
