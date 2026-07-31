#include <luajit-2.1/lua.h>
#include <luajit-2.1/lualib.h>
#include <luajit-2.1/lauxlib.h>
#include "global_var.h"
#include "config.h"

static int l_hello(lua_State*L){
  const char*name=luaL_optstring(L,1,"World");
  printf("Hello %s",name);
  return 0;
}
int initializeLua(app_state_t*app){
  lua_State*L=luaL_newstate();
  app->L=L;
  if(!L){
    fprintf(stderr,"ERROR: unable to create new lua state\n");
    return 0;
  }
  luaL_openlibs(L);
  lua_newtable(L);
  lua_pushcfunction(L, l_hello);
  lua_setfield(L, -2, "hello");
  lua_setglobal(L, "musicli");
  char*config_path=readString(app->config_path);
  if(!config_path){
    fprintf(stderr,"ERROR: unable to recognise config path\n");
    return 0;
  }
  if(luaL_dofile(L,config_path)!=LUA_OK){
    fprintf(stderr,"%s\n",lua_tostring(L, -1));
    return 0;
  }
  return 1;
}
