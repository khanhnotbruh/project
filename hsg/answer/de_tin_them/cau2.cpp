#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI2.INP","r");
  FILE *fout=fopen("BAI2.OUT","w");

  int r=0,l=0;
  fscanf(fin,"%d %d",&r,&l);
  std::vector<int>seive(r+1,0);
  for(int i=1;i<=r/2;i++){
    //starting out on next block:i*2
    //iliterate-> j+=i
    for(int j=i*2;j<r;j+=i){
      seive[j]+=i;
    }
  }
  int ans=0;
  for(;l<r;l++){
    if(l<seive[l])ans++;
  }
  fprintf(fout,"%d",ans);
  fclose(fin);fclose(fout);
  return 0;
}
