local mymodule = {}
local LinkedList = {}

LinkedList.__index = LinkedList

function LinkedList.new(value, next)
    local self = setmetatable({}, LinkedList)

    self.value = value
    self.next = next

    return self
end

function LinkedList:insert(value)
    if self.value == nil then
        self.value = value
        self.next = nil
        return
    end

    if self.next then
        self.next:insert(value)
        return
    end

    local node = LinkedList.new(value, nil)
    self.next = node
end

mymodule.LinkedList = LinkedList

function mymodule.create_single_linked_list(vector)
    local head = LinkedList.new(vector[1], nil)
    local prev = head

    for i=2, #vector, 1 do
        local node = LinkedList.new(vector[i], nil)
        prev.next = node
        prev = node
    end

    return head
end

return mymodule
