-- http://rosettacode.org/wiki/Sierpinski_triangle

local sierpinski = require('rosetta/lib/sierpinski')

local triangle = sierpinski.triangle(4)

for i=1, #triangle, 1 do
    print(triangle[i])
end
