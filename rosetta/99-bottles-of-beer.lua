-- http://rosettacode.org/wiki/99_Bottles_of_Beer

local function sayBottle(i)
    if i > 1 then
        return "bottles"
    end

    return "bottle"
end

for i=100, 1, -1 do
    print(i .. " " .. sayBottle(i) .. " of beer on the wall")
    print(i .. " " .. sayBottle(i) .. " of beer")
    print("Take one down, pass it around")
    print(i - 1 .. " " .. sayBottle(i - 1) .. " of beer on the wall\n")
end
