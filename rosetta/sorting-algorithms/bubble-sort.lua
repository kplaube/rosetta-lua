-- http://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort

local sorting = require('rosetta/lib/sorting')

local myarray = {10, 1, 2, 5, 8, 9, 1}

sorting.bubble_sort(myarray)
print(table.unpack(myarray))
