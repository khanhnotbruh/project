#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI2.INP","r");
  FILE *fout=fopen("BAI2.OUT","w");
  char s[256];
  while(fscanf(fin,"%s",s)==1){
    fprintf(fout,"%s\n",s);
  }

  fclose(fin);fclose(fout);
  return 0;
}
