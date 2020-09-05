#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int main(int argc, const char* argv[]){
  lua_State* L = luaL_newstate();
  luaL_openlibs(L);

  // https://www.lua.org/manual/5.3/manual.html#luaL_dostring
  luaL_dostring(L, "print('hello world')");

  // carrega o arquivo e executa as ações dele
  luaL_dofile(L, "hello.lua");

  lua_close(L);
  return 0;
}

// gcc -I/usr/local/Cellar/lua/5.3.5_1/include/lua5.3 -o hello -llua5.3 hello.c
// ./hello build & run