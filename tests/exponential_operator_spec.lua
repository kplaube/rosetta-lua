package.path = package.path .. ';lib/?lua'

describe('Exponential Operator', function()
    require('exponential_operator')

    it('should return 1 when the expoent is 0', function()
        local response = custom_pow(3, 0)

        assert.are.equal(1, response)
    end)

    it('should return N when the expoent is 1', function()
        local response = custom_pow(3, 1)

        assert.are.equal(3, response)
    end)

    it('should return N multiplied X times by an even X', function()
        local n = 3
        local x = 2
        local response = custom_pow(n, x)

        assert.are.equal(9, response)
    end)

    it('should return N multiplied X times by an odd X', function()
        local n = 2
        local x = 3
        local response = custom_pow(n, x)

        assert.are.equal(8, response)
    end)

    it('should return a fraction when X is a negative number', function()
        local n = 3
        local x = -1
        local response = custom_pow(n, x)

        assert.are.equal(1/3, response)
    end)

    it('should return N multiplied X times even if N is a float', function()
        local n = 1.50
        local x = 9
        local response = custom_pow(n, x)

        assert.are.equal(38.443359375, response)
    end)
end)
