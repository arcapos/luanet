package = "luanet"
version = "scm-1"
source = {
   url = "git://github.com/mbalmer/luanet"
}
description = {
   summary = "Network access for Lua",
   homepage = "http://github.com/mbalmer/luanet",
   license = "3-clause BSD",
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      net = {
         sources = {"luanet.c"}
      }
   }
}
