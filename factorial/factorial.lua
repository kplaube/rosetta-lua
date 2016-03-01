-- http://rosettacode.org/wiki/Factorial

local factorial = require('lib/factorial')

local result = factorial.factorial(5)

print('5! == ' .. result)
