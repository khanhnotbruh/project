#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");

  int n;fscanf(fin,"%d",&n);
  for(int i=0;i<n;i++){
    char s[1001];
    fscanf(fin,"%s",s);
    //logic here
    //i still got no clue abt kmp algorithm
    char ans[2001];
    fprintf(fout,"%s\n",ans);
  }
  fclose(fin);fclose(fout);
  return 0;
}
