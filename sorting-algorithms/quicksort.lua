-- http://rosettacode.org/wiki/Sorting_algorithms/Quicksort

local sorting = require('lib/sorting_lib')

local myarray = {2, 3, 9, 2, 2}

sorting.quicksort(myarray, 1, #myarray)
print(table.unpack(myarray))
