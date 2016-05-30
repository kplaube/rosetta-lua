local mymodule = {}
local Node = {}
local LinkedList = {}

LinkedList.__index = LinkedList
Node.__index = Node

function Node.new(value)
    local self = setmetatable({}, Node)

    self.value = value
    self.next = nil

    return self
end

function LinkedList.new(value)
    local self = setmetatable({}, LinkedList)

    if value then
        self.head = Node.new(value)
    else
        self.head = nil
    end

    return self
end

function LinkedList:insert(value, node)
    if self.head == nil then
        self.head = Node.new(value)
        return
    end

    if node == nil then
        node = self.head
    end

    if node.next then
        self:insert(value, node.next)
        return
    end

    local new_node = Node.new(value)
    node.next = new_node
end

mymodule.Node = Node
mymodule.LinkedList = LinkedList

function mymodule.create_single_linked_list(vector)
    local linked_list = LinkedList.new(vector[1], nil)

    for i=2, #vector, 1 do
        linked_list:insert(vector[i])
    end

    return linked_list
end

return mymodule
