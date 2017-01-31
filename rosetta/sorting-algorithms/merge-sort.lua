-- http://rosettacode.org/wiki/Sorting_algorithms/Merge_sort

local sorting = require('rosetta/lib/sorting')

local myarray = {10, -1, -2, 5, 8, 9}

sorting.merge_sort(myarray, 1, #myarray)
print(table.unpack(myarray))
