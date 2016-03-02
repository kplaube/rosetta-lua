package.path = package.path .. ';lib/?lua'

describe('Greatest Common Divisor', function()
    local gcd = require('greatest_common_divisor')

    it('should return 2 for 10 and 4', function()
        local response = gcd(10, 4)
        assert.are.equal(2, response)
    end)

    it('should return 5 for 25 and 10', function()
        local response = gcd(25, 10)
        assert.are.equal(5, response)
    end)

    it('should return 8 for 1000 and 72', function()
        local response = gcd(1000, 72)
        assert.are.equal(8, response)
    end)

end)
