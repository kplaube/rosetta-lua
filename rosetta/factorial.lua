-- http://rosettacode.org/wiki/Factorial

local factorial = require('rosetta/lib/factorial')

local result = factorial.factorial(5)

print('5! == ' .. result)
