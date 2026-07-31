#ifndef GLOBAL_H
#define GLOBAL_H
#include <luajit-2.1/lua.h>
#include <stdbool.h>
#include <stdint.h>
#include <ncurses.h>
//------------------- STRING -------------------//
enum string_type_e{
  FIXED=0,
  DYNAMIC=1,
};
typedef struct string_t{
  uint64_t size,len,cnt;
  struct string_t*next;
  enum string_type_e type;
  char*buf;
}string_t;
//------------------- WIDGET -------------------//
enum edges_e{
  TOP=0,
  BOTTOM,
  LEFT,
  RIGHT,
};
enum corner_e{
  TOP_LEFT=0,
  TOP_RIGHT,
  BOTTOM_LEFT,
  BOTTOM_RIGHT,
};
enum edge_val_e{
  EDGE_PATTERN=0,
  EDGE_MIDDLE,
  EDGE_UPPER,
  EDGE_LOWER,
  EDGE_RIGHT,
  EDGE_LEFT,
};
struct border_s{
  string_t*edges[4][6];
  string_t*corners[4];
  string_t*pattern;
  int size;
};
struct state_s{
  uint32_t cx,cy;
  uint32_t key_pressed;
  uint8_t is_hovered:1;   
  uint8_t is_empty:1;   
  uint8_t is_focus:1;
  uint8_t is_visible:1; 
  uint8_t is_clicked:1;   
  uint8_t is_pressed:1;
};
struct config_s{
  uint32_t id; //encoding from string to idx
  uint32_t anchors[4];
  uint32_t w,h,sx,sy;

  uint8_t ascii       : 1;
  uint8_t empty       : 1;
  uint8_t focus       : 1;
  uint8_t mouse       : 1;
  uint8_t fallthrough : 1;
  uint8_t drag        : 1;
  uint8_t preserve_layers : 1;
  uint8_t _:1;

  char (*fill_func)(int x,int y);
  string_t*text;
};
typedef struct widget_t{
  struct config_s*config;
  struct border_s*borders;
  struct state_s *state;

  struct widget_t*parent;
  struct widget_t*child;
  struct widget_t*sibling;
}widget_t;

//------------------- MEMORY -------------------//
enum memory_component_type_e{
  WIDGET=0,
  BORDER,
  STATE,
  CONFIG,
};
enum memory_pointer_type_e{
  ROOT=0,
  CURR=1,
};
typedef struct memory_t{
  uint8_t*buf;
  struct memory_t*next;
  uint32_t cnt,size;
  enum memory_component_type_e type;
}memory_t;
//------------------- APP -------------------//
typedef struct{
  WINDOW*scr;
  lua_State*L;
  memory_t*mem[2][4];
  string_t*config_path;
  string_t*music_path;
  int mem_cnt,wid_cnt;
}app_state_t;
//------------------- FUNCTIONS -------------------//
int appendWidget(app_state_t*app,widget_t*widget);
char*readString(string_t*s);
void freeLua(lua_State*L);
void freeNcurse();
void freeApp(app_state_t*app);
void freeString(string_t*s);
#endif
