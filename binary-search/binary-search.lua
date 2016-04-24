-- http://rosettacode.org/wiki/Binary_search

local search = require('lib/search')

local myarray = {}
local index

for i=1,25 do
	myarray[i] = i * 2
end

index = search.binary_search(18, myarray)
print(index)
