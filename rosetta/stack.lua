-- http://rosettacode.org/wiki/Stack

local stack = require('rosetta/lib/stack')

print('stack is empty:', stack.empty())

stack.push(1)
stack.push(2)
stack.push(3)

print('stack is empty:', stack.empty())

print('pop:', stack.pop())
print('pop:', stack.pop())
print('pop:', stack.pop())
print('pop:', stack.pop())

print('stack is empty:', stack.empty())
