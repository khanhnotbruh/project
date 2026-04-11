#include <bits/stdc++.h>
#include <algorithm>
using namespace std;
int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");

  int m,f;
  fscanf(fin,"%d %d",&m,&f);
  int male[m],female[f];
  for(int i=0;i<m;i++)fscanf(fin,"%d",&male[i]);
  for(int i=0;i<f;i++)fscanf(fin,"%d",&female[i]);
  sort(male,male+m);
  sort(female,female+f);
  long long ans=0;
  int ptr=0;
  for(int i=0;i<m;i++){
    while(ptr<f && female[ptr]<male[i])ptr++;
    ans+=ptr;
  }
  fprintf(fout,"%lld",ans);
  fclose(fin);fclose(fout);
  return 0;
}
