#include <bits/stdc++.h>
int max(int a,int b){return a>b?a:b;}
int main(){
  FILE *fin=fopen("BAI1.INP","r");
  FILE *fout=fopen("BAI1.OUT","w");
  
  int alpha[26];
  char s[21];
  for(int i=0;i<26;i++){
    fscanf(fin,"%d",&alpha[i]);
  }
  fscanf(fin,"%s",s);
  int w=0;
  int h=0;
  for(;s[w]!='\0';w++){
    h=max(h,alpha[s[w]-'a']);
  }
  fprintf(fout,"%d",h*w);
  
  fclose(fin);fclose(fout);
  return 0;
}
