-- http://rosettacode.org/wiki/Tree_traversal

local tree_lib = require('lib/tree')

local nodes = {}
for i=1, 9 do
    nodes[i] = tree_lib.Node.new(i)
end

nodes[1].left_child = nodes[2]
nodes[1].right_child = nodes[3]

nodes[2].left_child = nodes[4]
nodes[2].right_child = nodes[5]

nodes[4].left_child = nodes[7]

nodes[3].left_child = nodes[6]

nodes[6].left_child = nodes[8]
nodes[6].right_child = nodes[9]

local pre_order = nodes[1]:pre_order_traverse()
local in_order = nodes[1]:in_order_traverse()
local post_order = nodes[1]:post_order_traverse()
local level_order = nodes[1]:level_order_traverse()

print('preorder: ', table.unpack(pre_order))
print('inorder: ', table.unpack(in_order))
print('postorder: ', table.unpack(post_order))
print('levelorder: ', table.unpack(level_order))
