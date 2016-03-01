package.path = package.path .. ';./lib/?.lua'
require("guessing_numbers")

describe('guessing the number lib', function()

	before_each(function()
		-- FIXME: Should use math.randomseed(0)
		pick_a_number(0, 100, true)
	end)

	it('should pick an integer number', function ()
		number = get_the_number()

		assert.are.equals(46, number)
	end)

	it('should say that the guess is higher than the picked number', function ()
		assert.is_true(is_higher(50))
	end)

	it('should say that the guess is lesser than the picked number', function ()
		assert.is_true(is_lesser(18))
	end)

	it('should return true when the guessed number is equal to the picked number', function ()
		assert.is_true(is_the_number(46))
	end)

end)
