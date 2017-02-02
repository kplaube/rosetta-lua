-- http://rosettacode.org/wiki/99_Bottles_of_Beer

for i=100, 1, -1 do
    print(i .. " bottles of beer on the wall")
    print(i .. " bottles of beer")
    print("Take one down, pass it around")
    print(i - 1 .. " bottles of beer on the wall\n")
end
