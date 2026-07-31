#include <alloca.h>
#include "global_var.h"
int initializeUI(app_state_t app){
  initscr();             // Start ncurses mod
  cbreak();              // Line buffering disabled,pass key events instantly
  noecho();              // Don't print user keystrokes to screen
  keypad(stdscr,TRUE);  // Enable arrow keys,F1-F12,Home,End
  nodelay(stdscr,TRUE); // Non-blocking input(wgetch returns ERR if no key)
  curs_set(0);           // Hide cursor(0=invisible,1=normal,2=high visibility)
  if(!stdscr){
    fprintf(stderr,"ERROR: failed to initialize window\n");
    return 1;
  }
  app.scr=stdscr;
  return 0;
}












/*
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀♥VN⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡖⠀⠀⠀⠀⢲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⣀⣴⣦⣀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
   */
