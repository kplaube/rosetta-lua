help:
	@echo 'help                           This screen'
	@echo 'setup                          Install project dependencies'
	@echo 'test                           Run project tests'
	@echo ''

setup:
	@echo 'Make sure you have installed LuaRocks and LÖVE!'
	luarocks make --local

test:
	~/.luarocks/bin/busted tests/

lint:
	~/.luarocks/bin/luacheck .
