#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int main(int argc, const char* argv[]){
  lua_State* L = luaL_newstate();
  luaL_openlibs(L);

  luaL_dostring(L, "print('hello world')");
  luaL_dofile(L, "main.lua");

  lua_close(L);
  return 0;
}