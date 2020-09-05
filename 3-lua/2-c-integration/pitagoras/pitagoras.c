// https://www.lua.org/pil/25.2.html

#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
 
/* function declaration */
double f (lua_State* L, double cateto1, double cateto2);
void error (lua_State *L, const char *fmt, ...);

int main(int argc, const char* argv[]){
  lua_State* L = luaL_newstate();
  luaL_openlibs(L);

  luaL_dofile(L, "pitagoras.lua");

  double hipotenusa = f(L, 3, 4);

  printf("hipotenusa: %f", hipotenusa);

  lua_close(L);
  return 0;
}

double f (lua_State* L, double cateto1, double cateto2) {
  double z;

  /* push functions and arguments */
  lua_getglobal(L, "pitagoras");  /* function to be called */
  lua_pushnumber(L, cateto1);   /* push 1st argument */
  lua_pushnumber(L, cateto1);   /* push 2nd argument */

  /* do the call (2 arguments, 1 result) */
  if (lua_pcall(L, 2, 1, 0) != 0)
    error(L, "error running function `pitagoras': %s",
              lua_tostring(L, -1));

  /* retrieve result */
  if (!lua_isnumber(L, -1))
    error(L, "function `pitagoras' must return a number");
  z = lua_tonumber(L, -1);
  lua_pop(L, 1);
  return z;
}

// https://www.lua.org/pil/24.1.html#first-ex
void error (lua_State *L, const char *fmt, ...) {
  va_list argp;
  va_start(argp, fmt);
  vfprintf(stderr, fmt, argp);
  va_end(argp);
  lua_close(L);
  exit(EXIT_FAILURE);
}