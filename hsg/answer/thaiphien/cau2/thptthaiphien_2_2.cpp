#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI2.INP","r");
  FILE *fout=fopen("BAI2.OUT","w");
  char num[256];
  fscanf(fin,"%s",num);
  int ans=0;
  for(int i=0;num[i]!='\0';i++){
    ans+=num[i]-'0';
  }
  fprintf(fout,"%d",ans);

  fclose(fin);fclose(fout);
  return 0;
}
