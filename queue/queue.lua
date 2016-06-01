-- http://rosettacode.org/wiki/Queue/Definition
-- http://rosettacode.org/wiki/Queue/Usage

local Queue = require('lib/queue')
local q = Queue.new()

q:push('a')
q:push('b')
q:push('c')

print('is empty:', q:empty())

print('pop', q:pop())
print('pop', q:pop())
print('pop', q:pop())

print('is empty:', q:empty())
