help:
	@echo 'help                           This screen'
	@echo 'install                        Install project dependencies'
	@echo 'test                           Run project tests'
	@echo ''

install:
	@echo 'Make sure you have installed LuaRocks and LÖVE!'
	luarocks install luasec
	luarocks install wsapi-xavante
	luarocks install busted

test:
	busted tests/
