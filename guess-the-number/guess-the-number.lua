-- http://rosettacode.org/wiki/Guess_the_number

math.randomseed(os.time())
math.random(); math.random(); math.random()

local rand_number = math.random(1, 10)
local user_number

repeat
    io.write("Guess the number: ")
    user_number = tonumber(io.read())
until(user_number == rand_number)

print("Well guessed!")
