-- http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort

local sorting = require('lib/sorting_lib')

local myarray = {10, -1, -2, 5, 8, 9}

sorting:insertion_sort(myarray)
print(unpack(myarray))
