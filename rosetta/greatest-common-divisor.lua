-- http://rosettacode.org/wiki/Greatest_common_divisor

local gcd = require('rosetta/lib/greatest_common_divisor')

local a = 10
local b = 560
local result = gcd(a, b)

print("gcd(" .. a .. ", " .. b .. ") == " .. result)
