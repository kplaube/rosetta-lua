-- http://rosettacode.org/wiki/Sierpinski_triangle

local sierpinski = require('lib/sierpinski_lib')

local triangle = sierpinski.triangle(4)

for i=1, #triangle, 1 do
    print(triangle[i])
end
