package.path = package.path .. ';./lib/?.lua'

describe('Binary search', function()
	local search
	local myarray = {}

	setup(function()
		search = require('search')

		for i=1,25 do
			myarray[i] = i * 2
		end
	end)

	it('should find the element in the middle of array', function()
		local response = search.binary_search(10, myarray)

		assert.are.equal(5, response)
	end)

	it('should find the element even if it is the first element', function()
		local response = search.binary_search(2, myarray)

		assert.are.equal(1, response)
	end)

	it('should find the element even if it is the last element', function()
		local response = search.binary_search(50, myarray)

		assert.are.equal(25, response)
	end)

	it('should not find an inexistent element', function()
		local response = search.binary_search(80, myarray)

		assert.are.equal(-1, response)
	end)

end)
