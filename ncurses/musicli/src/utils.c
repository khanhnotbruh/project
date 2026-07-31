#include "global_var.h"
#include <lua.h>
#include <stdlib.h>
#include <string.h>
char*readString(string_t*s){
  if(!s||!s->buf)return 0;
  if(s->len>s->size){
    char*buf=malloc(s->len+1);
    if(!buf)return 0;
    char*w=buf;
    string_t*c=s;
    while(c){
      memcpy(w,c->buf,c->cnt);
      w+=c->cnt;
      c=c->next;
    }
  buf[s->len]='\0';
    return buf;
  }
  return s->buf;
}
static memory_t*appendComponent(memory_t*mem,void*com,uint64_t size){
  if(!mem||!com)return 0;
  if(mem->cnt+size>=mem->size){
    memory_t*new=malloc(sizeof(memory_t));
    if(!new){
      fprintf(stderr,"ERROR: failed allocating space\n");
      return 0;
    }
    uint64_t new_size=2*mem->size*sizeof(memory_t);
    new->cnt=size;
    new->size=new_size;
    new->buf=malloc(new_size);
    if(!new->buf){
      fprintf(stderr,"ERROR: failed allocating space\n");
      return 0;
    }
    new->type=mem->type;
    new->next=0;
    mem->next=new;
    mem=new;
  }
  memcpy((uint8_t*)mem->buf+mem->cnt, com, size);
  mem->cnt+=size;
  return mem;
}
#define PUSH_COMPONENT(app,_type,data_ptr,data_size)\
  do{\
    if(data_ptr){\
      memory_t *res=appendComponent((app)->mem[CURR][(_type)],\
          (data_ptr),(data_size));\
      if(!res){\
        fprintf(stderr,"ERROR: failed pushing %s\n",#_type);\
        return 0;\
      }\
      /* If ROOT for this type is not set yet,set it now! */\
      if(!(app)->mem[ROOT][(_type)]){\
        (app)->mem[ROOT][(_type)]=res;\
      }\
      (app)->mem[CURR][(_type)]=res;\
    }\
  }while(0)
int appendWidget(app_state_t*app,widget_t*widget){
  if(!app||!widget)return 0;
  PUSH_COMPONENT(app,WIDGET,widget,sizeof(widget_t));
  PUSH_COMPONENT(app,STATE,widget->state,sizeof(struct state_s));
  PUSH_COMPONENT(app,CONFIG,widget->config,sizeof(struct config_s));
  PUSH_COMPONENT(app,BORDER,widget->borders,sizeof(struct border_s));
  return 1;
}

void freeLua(lua_State*L){
  if(L)lua_close(L);
}
void freeNcurse(){
  curs_set(1);
  clear();
  refresh();
  endwin();
}
void freeMemory(memory_t*mem){
  memory_t*c=mem;
  while(c){
    memory_t*n=c->next;
    free(c->buf); free(c);
    c=n;
  }
}
void freeApp(app_state_t*app){
  if(!app)return;
  for(int i=0;i<4;i++){
    freeMemory(app->mem[ROOT][i]);
    app->mem[ROOT][i]=0;
    app->mem[CURR][i]=0;
  }
  freeNcurse();
  freeLua(app->L);
}

void freeString(string_t*s){
  if(!s)return;
  while(s){
    string_t*n=s->next;
    free(s->buf);free(s);
    s=n;
  }
  s=0;
}
