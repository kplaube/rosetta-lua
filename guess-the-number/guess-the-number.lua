-- http://rosettacode.org/wiki/Guess_the_number

local gn = require('lib/guessing_numbers')
local user_number

gn.pick_a_number(1, 10)

repeat
    io.write("Guess the number: ")
    user_number = tonumber(io.read())
until(gn.is_the_number(user_number))

print("Well guessed!")
