-- http://rosettacode.org/wiki/Guess_the_number

require('lib/guessing_numbers')

local user_number

pick_a_number(1, 10)

repeat
    io.write("Guess the number: ")
    user_number = tonumber(io.read())
until(is_the_number(user_number))

print("Well guessed!")
