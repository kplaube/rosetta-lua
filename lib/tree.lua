local Queue = require('lib/queue')

local mymodule = {}
local Node = {}
local AVL = {}
Node.__index = Node
AVL.__index = AVL

mymodule.Node = Node
mymodule.AVL = AVL

function Node.new(value, parent_node)
    local self = setmetatable({}, Node)

    self.value = value
    self.balance = 0
    self.left_child = nil
    self.right_child = nil
    self.parent_node = parent_node

    return self
end

function Node:insert(value)
    if value < self.value then
        if self.left_child == nil then
            self.left_child = Node.new(value, self)
        else
            self.left_child:insert(value)
        end
    elseif value > self.value then
        if self.right_child == nil then
            self.right_child = Node.new(value, self)
        else
            self.right_child:insert(value)
        end
    end
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

function AVL.new()
    local self = setmetatable({}, AVL)

    self.root = nil

    return self
end

function AVL:insert(data)
    if self.root == nil then
        self.root = Node.new(data, nil)
    else
        self.root:insert(data)
    end

    self:rebalance_tree(self.root)
end

function AVL:rebalance_tree(parent_node)
    self:set_balance(parent_node)

    if parent_node.balance < -1 then
        if self:_height(parent_node.left_child.left_child) >= self:_height(parent_node.left_child.right_child) then
            parent_node = self:rotate_right(parent_node)
        else
            parent_node = self:rotate_left_right(parent_node)
        end
    elseif parent_node.balance > 1 then
        if self:_height(parent_node.right_child.right_child) >= self:_height(parent_node.right_child.left_child) then
            parent_node = self:rotate_left(parent_node)
        else
            parent_node = self:rotate_right_left(parent_node)
        end
    end

    if parent_node.parent_node ~= nil then
        self:rebalance_tree(parent_node.parent_node)
    else
        self.root = parent_node
    end
end

function AVL:set_balance(node)
    local rch = self:_height(node.right_child)
    local lch = self:_height(node.left_child)

    node.balance = rch - lch
end

function AVL:rotate_left_right(node)
    node.left_child = self:rotate_left(node.left_child)
    return self:rotate_right(node)
end

function AVL:rotate_right_left(node)
    node.right_child = self:rotate_right(node.right_child)
    return self:rotate_left(node)
end

function AVL:rotate_left(node)
    local b = node.right_child
    b.parent_node = node.parent_node

    node.right_child = b.left_child

    if node.right_child ~= nil then
        node.right_child.parent_node = node
    end

    b.left_child = node
    node.parent_node = b

    if b.parent_node ~= nil then
        if b.parent_node.right_child == node then
            b.parent_node.right_child = b
        else
            b.parent_node.left_child = b
        end
    end

    self:set_balance(node)
    self:set_balance(b)

    return b
end

function AVL:rotate_right(node)
    local b = node.left_child
    b.parent_node = node.parent_node

    node.left_child = b.right_child

    if node.left_chid ~= nil then
        node.left_child.parent_node = node
    end

    b.right_child = node
    node.parent_node = b

    if b.parent_node ~= nil then
        if b.parent_node.right_child == node then
            b.parent_node.right_child = b
        else
            b.parent_node.left_child = b
        end
    end

    self:set_balance(node)
    self:set_balance(b)

    return b
end

function AVL:height()
    return self:_height(self.root)
end

function AVL:_height(node)
    if node == nil then
        return -1
    else
        return 1 + math.max(
            self:_height(node.left_child),
            self:_height(node.right_child)
        )
    end
end

return mymodule
