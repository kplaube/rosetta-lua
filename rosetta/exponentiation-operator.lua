-- http://rosettacode.org/wiki/Exponentiation_operator

local exp_op = require('rosetta/lib/exponentiation_operator')

local integer_exp = exp_op.custom_pow(2, 8)
print(integer_exp)

local float_exp = exp_op.custom_pow(2.50, 3)
print(float_exp)
