package.path = package.path .. ';./lib/?.lua'

describe('Balanced brackets', function()
    local brackets = require('balanced_brackets')

    it('should return OK when I pass an empty string', function()
        local response = brackets.balanced_brackets('')

        assert.are.equal('OK', response)
    end)

    it('should return OK when I pass a single open bracket', function()
        local response = brackets.balanced_brackets('[')

        assert.are.equal('NOT OK', response)
    end)

    it('should return NOT OK when I pass a sngle close bracket', function()
        local response = brackets.balanced_brackets(']')

        assert.are.equal('NOT OK', response)
    end)

    it('should return OK when I pass a flat pair of brackets', function()
        local response = brackets.balanced_brackets('[]')

        assert.are.equal('OK', response)
    end)

    it('should return NOT OK when I pass a flat (but wrong) pair of brackets', function()
        local response1 = brackets.balanced_brackets('[[')
        local response2 = brackets.balanced_brackets(']]')

        assert.are.equal('NOT OK', response1)
        assert.are.equal('NOT OK', response2)
    end)

    it('should return OK with a correct complex pair of brackets', function()
        local response = brackets.balanced_brackets('[[][]]')

        assert.are.equal('OK', response)
    end)

    it('should return NOT OK with a incorrect complex pair of brackets', function()
        local response = brackets.balanced_brackets('[]][[]')

        assert.are.equal('NOT OK', response)
    end)
end)
