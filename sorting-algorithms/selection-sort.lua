-- http://rosettacode.org/wiki/Sorting_algorithms/Selection_sort

local sorting = require('lib/sorting_lib')

local myarray = {10, -1, -2, 5, 8, 9}

sorting:selection_sort(myarray)
for i in next, myarray do
    print(myarray[i])
end