#include <bits/stdc++.h>
using namespace std;
int main(){
  FILE *fin=fopen("BAI2.INP","r");
  FILE *fout=fopen("BAI2.OUT","w");

  char s[256];
  fscanf(fin,"%s",s);
  int ans=0;
  for(int i=0;s[i]!='\0';i++){
    int cur=s[i]-'0';
    if(cur>=0 && cur<=9){
      if(cur%2==0)ans++;
      else ans--;
    }
  }
  fprintf(fout,"%d",(ans>0?ans:-ans));
  fclose(fin);fclose(fout);
  return 0;
}
