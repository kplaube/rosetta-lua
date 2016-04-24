-- http://rosettacode.org/wiki/Guess_the_number/With_Feedback

local gn = require('lib/guessing_numbers')
local user_number

gn.pick_a_number(1, 100)

repeat
    io.write("Guess the number: ")
    user_number = tonumber(io.read())

    if(gn.is_higher(user_number)) then
        print("The guess is higher than the target")
    elseif(gn.is_lesser(user_number)) then
        print("The guess is lesser than the target")
    else
        print("The guess is equal to the target")
    end
until(gn.is_the_number(user_number))
