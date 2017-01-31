package = "rosetta-lua"
version = "1.0-1"
source = {
   url = "git+https://github.com/kplaube/rosetta-lua"
}
description = {
   homepage = "https://github.com/kplaube/rosetta-lua",
   license = "GNU/GPL-2"
}
dependencies = {
    "busted",
    "luacheck"
}
build = {
   type = "builtin",
   modules = {}
}
