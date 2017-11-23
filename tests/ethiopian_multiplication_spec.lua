package.path = package.path .. ';lib/?lua'

describe('Ethiopian Multiplication', function()
    local multiplication = require('multiplication')

    it('should return 280 when 35 x 8', function()
        local response = multiplication.ethiopian(35, 8)

        assert.are.equal(280, response[1])
    end)

    it('should return 1 when 1 x 1', function()
        local response = multiplication.ethiopian(1, 1)

        assert.are.equal(1, response[1])
    end)

    it('should return 0 when 1 x 0', function()
        local response = multiplication.ethiopian(1, 0)

        assert.are.equal(0, response[1])
    end)
end)
