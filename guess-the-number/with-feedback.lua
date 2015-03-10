-- http://rosettacode.org/wiki/Guess_the_number/With_Feedback

require('lib/guessing_numbers')

local user_number

pick_a_number(1, 100)

repeat
    io.write("Guess the number: ")
    user_number = tonumber(io.read())

    if(is_higher(user_number)) then
        print("The guess is higher than the target")
    elseif(is_lesser(user_number)) then
        print("The guess is lesser than the target")
    else
        print("The guess is equal to the target")
    end
until(is_the_number(user_number))
