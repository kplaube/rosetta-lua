local Queue = {}
Queue.__index = Queue

function Queue.new()
    local self = setmetatable({}, Queue)

    self._array = {}

    return self
end

function Queue:empty()
    return #self._array < 1
end

function Queue:push(value)
    table.insert(self._array, 1, value)
end

function Queue:pop()
    return table.remove(self._array)
end

return Queue
