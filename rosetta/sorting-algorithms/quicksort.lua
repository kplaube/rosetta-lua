-- http://rosettacode.org/wiki/Sorting_algorithms/Quicksort

local sorting = require('rosetta/lib/sorting')

local myarray = {2, 3, 9, 2, 2}

sorting.quicksort(myarray, 1, #myarray)
print(table.unpack(myarray))
