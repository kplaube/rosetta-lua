package.path = package.path .. ';lib/?lua'

describe('Palindrome detection', function()
    local palindrome;

    setup(function()
        palindrome = require('palindrome')
    end)

    it('should say that "ovo" is a palindrome', function()
        local response = palindrome:is_palindrome('ovo')

        assert.is_true(response)
    end)

    it('should say that "ovos" is not a palindrome', function()
        local response = palindrome:is_palindrome('ovos')

        assert.is_false(response)
    end)

    it('should say that "reagir" is not a palindrome', function()
        local response = palindrome:is_palindrome('reagir')

        assert.is_false(response)
    end)

    it('should say that "omississimo" is a palindrome', function()
        local response = palindrome:is_palindrome('omississimo')

        assert.is_true(response)
    end)

    it('should say that "socorrammesubinoonibusemmarrocos" is a palindrome', function()
        local response = palindrome:is_palindrome('socorrammesubinoonibusemmarrocos')

        assert.is_true(response)
    end)

end)
