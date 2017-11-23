-- http://rosettacode.org/wiki/Ethiopian_multiplication

local multiplication = require('rosetta/lib/multiplication')

local result = multiplication.ethiopian(35, 8)

print(result[1])
for i=1, #result[2], 1 do
    print(table.unpack(result[2][i]))
end
