#include "config.h"
#include "ui.h"
#include <stdio.h>
#include <signal.h>

void handle_signal(int sig) {
    endwin();
    fprintf(stderr, "\nCaught signal %d.\n Exiting...\n", sig);
    signal(sig, SIG_DFL);
    raise(sig);
}
int main(){
  app_state_t app={0};
  if(!initializeLua(&app)){
    fprintf(stderr,"FATAL: failed to initialize Lua\n");
    return 1;
  }
  if(!initializeUI(&app)){
    fprintf(stderr,"FATAL: failed to initialize UI\n");
    return 1;
  }
  signal(SIGINT,  handle_signal); // Ctrl+C
  signal(SIGTERM, handle_signal); // Kill command
  signal(SIGSEGV, handle_signal); // Segfault
  
  return 0;
}
