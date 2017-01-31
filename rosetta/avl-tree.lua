-- http://rosettacode.org/wiki/AVL_tree

local tree_lib = require('rosetta/lib/tree')

local avl = tree_lib.AVL.new()

print('adding 1', avl:insert(1))
print('adding 500', avl:insert(500))
print('adding 15', avl:insert(15))
print('adding -1', avl:insert(-1))
print('adding 4', avl:insert(4))
print('adding 98', avl:insert(98))
print('adding 99', avl:insert(99))
print('adding 95', avl:insert(95))
print('adding 16', avl:insert(16))
print('adding -10', avl:insert(-10))
print('adding 2', avl:insert(2))

print('removing 16', avl:remove(16))

print('in order traverse:', table.unpack(avl.root:in_order_traverse()))
