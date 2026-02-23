#include <limits.h>
#include <stdio.h>
int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");

  fclose(fin);
  fclose(fout);
  return 0;
}
