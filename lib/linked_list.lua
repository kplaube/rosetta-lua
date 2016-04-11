local mymodule = {}
local LinkedList = {}

LinkedList.__index = LinkedList

function LinkedList.new(value, next)
    local self = setmetatable({}, LinkedList)
    self.value = value
    self.next = next

    return self
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
