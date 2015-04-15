-- http://rosettacode.org/wiki/Exponentiation_operator

require('lib/exponentiation_operator')

local integer_exp = custom_pow(2, 8)
print(integer_exp)

local float_exp = custom_pow(2.50, 3)
print(float_exp)
