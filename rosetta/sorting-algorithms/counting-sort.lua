-- http://rosettacode.org/wiki/Sorting_algorithms/Counting_sort

local sorting = require('rosetta/lib/sorting')

local myarray = {10, 1, 2, 5, 8, 9, 1}

sorting.counting_sort(myarray)
print(table.unpack(myarray))
