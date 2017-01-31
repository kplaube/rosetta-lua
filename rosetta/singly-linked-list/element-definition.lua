-- http://rosettacode.org/wiki/Singly-linked_list/Element_definition

local linked_list = require('rosetta/lib/linked_list')

local list = linked_list.create_single_linked_list({1, 2, 3})

print(list.head.value)
print(list.head.next.value)
print(list.head.next.next.value)
