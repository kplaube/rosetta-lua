-- http://rosettacode.org/wiki/Hello_world/Graphical
--
-- To run in Mac:
-- $ open -n -a love ./rosetta/hello-world/graphical/

function love.draw()
	love.graphics.print("Goodbye, World!", 400, 300)
end
