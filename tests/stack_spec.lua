package.path = package.path .. ';./lib/?.lua'

describe('Stack', function()

    local stack = require('stack')

    before_each(function()
        stack.clean()
    end)

    it('should return true when it\'s empty', function()
        local response = stack.empty()

        assert.is_true(response)
    end)

    it('should return the last element added with pop', function()
        stack.push(1)
        stack.push(2)
        stack.push(3)

        local resp1 = stack.pop()
        local resp2 = stack.pop()
        local resp3 = stack.pop()

        assert.are.same(resp1, 3)
        assert.are.same(resp2, 2)
        assert.are.same(resp3, 1)
    end)

    it('should change stack\'s empty state', function()
        stack.push(1)

        assert.is_false(stack.empty())

        stack.pop()

        assert.is_true(stack.empty())
    end)

end)
