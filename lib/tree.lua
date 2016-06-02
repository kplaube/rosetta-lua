local Queue = require('lib/queue')

local mymodule = {}
local Node = {}
Node.__index = Node

function Node.new(value)
    local self = setmetatable({}, Node)

    self.value = value
    self.left_child = nil
    self.right_child = nil

    return self
end

function Node:pre_order_traverse(a)
    if a == nil then
        a = {}
    end

    table.insert(a, self.value)

    if self.left_child then
        self.left_child:pre_order_traverse(a)
    end

    if self.right_child then
        self.right_child:pre_order_traverse(a)
    end

    return a
end

function Node:in_order_traverse(a)
    if a == nil then
        a = {}
    end

    if self.left_child then
        self.left_child:in_order_traverse(a)
    end

    table.insert(a, self.value)

    if self.right_child then
        self.right_child:in_order_traverse(a)
    end

    return a
end

function Node:post_order_traverse(a)
    if a == nil then
        a = {}
    end

    if self.left_child then
        self.left_child:post_order_traverse(a)
    end

    if self.right_child then
        self.right_child:post_order_traverse(a)
    end

    table.insert(a, self.value)

    return a
end

function Node:level_order_traverse()
    local a = {}
    local queue = Queue.new()
    queue:push(self)

    while queue:empty() == false do
        local node = queue:pop()

        table.insert(a, node.value)

        if node.left_child then
            queue:push(node.left_child)
        end

        if node.right_child then
            queue:push(node.right_child)
        end
    end

    return a
end

mymodule.Node = Node

return mymodule
