#!/usr/bin/env wsapi.cgi

-- http://rosettacode.org/wiki/Hello_world/Web_server
--
-- To run:
-- $ cd hello-world/
-- $ wsapi -p5000
-- $ open http://localhost:5000/web-server.lua

local _M = {}

function _M.run(wsapi_env)
	local headers = { ["Content-type"] = "text/html" }

	local function goodbye_text()
		coroutine.yield("<html><body>")
		coroutine.yield("<p>Goodbye, World!</p>")
		coroutine.yield("</body></html>")
	end

	return 200, headers, coroutine.wrap(goodbye_text)
end

return _M
