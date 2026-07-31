#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "core.h"
#ifdef _WIN32
    #include <windows.h>
    #define PATH_SEP '\\'
    #define MAX_PATH_LEN MAX_PATH
#else
    #include <unistd.h>
    #include <limits.h>
    #define PATH_SEP '/'
    #define MAX_PATH_LEN PATH_MAX
#endif
static char*exe_path=0;
static size_t exe_path_size = 0;
char* getExePath(size_t *size_out) {
  if(exe_path){
    if(size_out)*size_out=exe_path_size;
    return exe_path;
  }
  char tmp[MAX_PATH_LEN];
  int size=0;
  if(!tmp)return 0;
#ifdef _WIN32
  DWORD len=GetModuleFileNameA(NULL,tmp,(DWORD)MAX_PATH_LEN);
  if(len==MAX_PATH_LEN-1){
    tmp[MAX_PATH_LEN-1]='\0';
  }else if(len==0){
    return 0;
  }
  size=len+1;
#else
  ssize_t len = readlink("/proc/self/exe",tmp,MAX_PATH_LEN-1);
  if (len != -1) {
    tmp[len] = '\0';
    size=len+1;
  } else {
    int i=0;
    for(;ARGV[0][i]!='\0';i++)tmp[i]=ARGV[0][i];
    size=i+1;
  }
#endif
  exe_path_size=size;
  exe_path=malloc(size*sizeof(char));
  if(!exe_path){
    return 0;
  }
  if(size_out)*size_out=size;
  strcpy(exe_path,tmp);
  return exe_path;
}
static char*bin_path=0;
static int bin_path_size=0;
char*getBinPath(size_t *size_out){
  if(bin_path){
    if(size_out)*size_out=bin_path_size;
    return bin_path;
  }
  if(!exe_path) getExePath(0);
  char *l=strrchr(exe_path,PATH_SEP),*n=0;
  int size=0;
  if(l){
    *l='\0';
    n=strrchr(exe_path,PATH_SEP);
    *l=PATH_SEP;
    if(n&&!strcmp("build",n+1)){
      size=(int)(n-exe_path);
    }else{
      size=(int)(l-exe-path);
    }
    size++;
  }else{
    size=0;
  }
  if(size_out)*size_out=size;
  bin_path_size = (size==0)?3 :size;
  bin_path=malloc(bin_path_size*sizeof(char));
  if(!bin_path)return 0;
  if(size==0){
    bin_path[0] = '.';
    bin_path[1] = PATH_SEP;
    bin_path[2] = '\0';
  }else{
    strncpy(bin_path,exe_path,size);
    bin_path[size] = '\0';
  }
  return bin_path;
}
