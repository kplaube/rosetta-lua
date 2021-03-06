local rand_number
local module = {}

local function seed_random()
    math.randomseed(os.time())
    math.random(); math.random(); math.random()
end

function module.pick_a_number(lower, upper, describe)
	describe = describe or false

	-- FIXME: Should use math.randomseed, but this method is
	-- not working very well in Mac OS X
	if describe then
		rand_number = 46
	else
		rand_number = math.random(lower, upper)
	end
end

function module.get_the_number()
    return rand_number
end

function module.is_the_number(guessed_number)
    return guessed_number == rand_number
end

function module.is_higher(guessed_number)
    return guessed_number > rand_number
end

function module.is_lesser(guessed_number)
    return guessed_number < rand_number
end

seed_random()

return module
