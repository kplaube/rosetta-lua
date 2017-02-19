local sorting = {}

sorting.bubble_sort = require('rosetta/lib/sorting/bubble')
sorting.counting_sort = require('rosetta/lib/sorting/counting')
sorting.insertion_sort = require('rosetta/lib/sorting/insertion')
sorting.merge_sort = require('rosetta/lib/sorting/merge')
sorting.quicksort = require('rosetta/lib/sorting/quicksort')
sorting.radix_sort = require('rosetta/lib/sorting/radix')
sorting.selection_sort = require('rosetta/lib/sorting/selection')

return sorting
