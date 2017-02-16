-- http://rosettacode.org/wiki/Knapsack_problem/0-1

local knapsack = require('rosetta/lib/knapsack')

-- item, weight, value
local items = {
    {'map', 9, 150},
    {'compass', 13, 35},
    {'water', 153, 200},
    {'sandwich', 50, 160},
    {'glucose', 15, 60},
    {'tin', 68, 45},
    {'banana', 27, 60},
    {'apple', 39, 40},
    {'cheese', 23, 30},
    {'beer', 52, 10},
    {'suntan cream', 11, 70},
    {'camera', 32, 30},
    {'t-shirt', 24, 15},
    {'trousers', 48, 10},
    {'umbrella', 73, 40},
    {'waterproof trousers', 42, 70},
    {'waterproof overclothes', 43, 75},
    {'note-case', 22, 80},
    {'sunglasses', 7, 20},
    {'towel', 18, 12},
    {'socks', 4, 50},
    {'book', 30, 10}
}

local knapsack_items = knapsack.resolve(items, 400)

for i=1, #knapsack_items, 1 do
    local ki = knapsack_items[i]
    local name = ki[1]
    local weight = ki[2]
    local value = ki[3]

    print(name .. ' (' .. weight .. 'w, ' .. value .. 'v)')
end