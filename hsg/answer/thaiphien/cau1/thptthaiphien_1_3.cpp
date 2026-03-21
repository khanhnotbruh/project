#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI1.INP","r");
  FILE *fout=fopen("BAI1.OUT","w");
  char s[1001];
  fscanf(fin,"%s",s);
  float ans=0;
  float cur=1;
  for(int i=0;s[i]!='\0';i++){
    if(s[i]=='D'){
      ans+=cur;
      cur+=0.5;
    }else{
      cur=1;
    }
  }
  fprintf(fout,"%.1f",ans);
  fclose(fin);fclose(fout);
  return 0;
}
