package.path = package.path .. ';lib/?lua'

describe('Factorial', function()
    local factorial

    setup(function()
        factorial = require('factorial')
    end)

    it('should return 24 for 4!', function()
        local response = factorial:factorial(4)

        assert.are.equal(24, response)
    end)

    it('should return 720 for 6!', function()
        local response = factorial:factorial(6)

        assert.are.equal(720, response)
    end)

    it('should return 1 for 0!', function()
        local response = factorial:factorial(0)

        assert.are.equal(1, response)
    end)
end)
