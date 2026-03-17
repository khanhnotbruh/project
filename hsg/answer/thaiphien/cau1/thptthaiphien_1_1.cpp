#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI1.INP","r");
  FILE *fout=fopen("BAI1.OUT","w");
  char s[2][256];
  fscanf(fin,"%s %s",s[0],s[1]);
  int freq[26]={0};
  for(int i=0;s[0][i]!='\0';i++){
    freq[(s[0][i]|32)-'a']++;
  }
  char ans[26]={0};
  for(int i=0;s[1][i]!='\0';i++){
    char cur=(s[1][i]|32)-'a';
    if(freq[cur]>0)ans[cur]++;
  }
  for(int i=0;i<26;i++){
    if(ans[i]==1)fprintf(fout,"%c",i+'a');
  }
  fclose(fin);fclose(fout);
  return 0;
}
