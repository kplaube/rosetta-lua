-- http://rosettacode.org/wiki/Singly-linked_list/Element_insertion

local linked_list = require('lib/linked_list')
local head = linked_list.create_single_linked_list({1, 2})

head:insert(3)

print(head.value)
print(head.next.value)
print(head.next.next.value)
