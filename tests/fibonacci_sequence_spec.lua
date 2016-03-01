package.path = package.path .. ';lib/?lua'

describe('Fibonacci sequence', function()
    local fib = require('fibonacci')

    describe('Recursive', function()
        it('should return 21 for 8', function()
            local response = fib.recursive(8)

            assert.are.equal(21, response)
        end)

        it('should return 13 for 7', function()
            local response = fib.recursive(7)

            assert.are.equal(13, response)
        end)

        it('should return 1 for 2', function()
            local response = fib.recursive(2)

            assert.are.equal(1, response)
        end)

        it('should return n when n <= 1', function()
            local resp1 = fib.recursive(1)
            local resp2 = fib.recursive(0)

            assert.are.equal(1, resp1)
            assert.are.equal(0, resp2)
        end)
    end)

    describe('Optimized', function()
        it('should return 21 for 8', function()
            local response = fib.optimized(8)

            assert.are.equal(21, response)
        end)

        it('should return 13 for 7', function()
            local response = fib.optimized(7)

            assert.are.equal(13, response)
        end)

        it('should return 1 for 2', function()
            local response = fib.optimized(2)

            assert.are.equal(1, response)
        end)

        it('should return n when n <= 1', function()
            local resp1 = fib.optimized(1)
            local resp2 = fib.optimized(0)

            assert.are.equal(1, resp1)
            assert.are.equal(0, resp2)
        end)
    end)
end)
