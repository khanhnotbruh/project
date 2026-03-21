#include <bits/stdc++.h>

int main(){
  FILE *fin=fopen("BAI1.INP","r");
  FILE *fout=fopen("BAI1.OUT","w");
  char s[1001];
  fscanf(fin,"%1000[^\n]",s);
  int open=0;
  for(int i=0;s[i]!='\0'&& s[i]!='\n';i++){
    if(s[i]=='{')open++;
    if(open==0)fprintf(fout,"%c",s[i]);
    if(s[i]=='}'&& open>0)open--;
   }
  fclose(fin);fclose(fout);
  return 0;
}
