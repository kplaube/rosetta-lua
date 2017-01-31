-- http://rosettacode.org/wiki/Singly-linked_list/Traversal

local listlib = require('rosetta/lib/linked_list')
local linked_list = listlib.create_single_linked_list({1, 2, 3, 4, 5})

linked_list:traverse()
