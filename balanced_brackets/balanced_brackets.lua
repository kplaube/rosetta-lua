-- http://rosettacode.org/wiki/Balanced_brackets

local brackets = require('lib/balanced_brackets')

local input = {
    '',
    '[]',
    '[][]',
    '[[][]]',
    '][',
    '][][',
    '[]][[]'
}

for i=1, #input, 1 do
    local response = brackets.balanced_brackets(input[i])

    print(input[i] .. '\t' .. response)
end
