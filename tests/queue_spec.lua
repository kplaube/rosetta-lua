package.path = package.path .. ';./rosetta/lib/?.lua'

describe('Queue', function()

    local Queue = require('queue')
    local queue

    before_each(function()
        queue = Queue.new()
    end)

    describe('Definition', function()

        it('should return true when it\'s empty', function()
            local response = queue:empty()

            assert.is_true(response)
        end)

        it('should return the first element added with pop', function()
            queue:push(1)
            queue:push(2)
            queue:push(3)

            local resp1 = queue:pop()
            local resp2 = queue:pop()
            local resp3 = queue:pop()

            assert.are.same(resp1, 1)
            assert.are.same(resp2, 2)
            assert.are.same(resp3, 3)
        end)

        it('should change queue\'s empty state', function()
            queue:push(1)

            assert.is_false(queue:empty())

            queue:pop()

            assert.is_true(queue:empty())
        end)

        it('should return nil when pop from an empty queue', function()
            local response = queue:pop()

            assert.is_nil(response)
        end)

    end)

end)
