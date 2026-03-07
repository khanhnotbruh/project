#include <bits/stdc++.h>
using namespace std;
int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");

  int n=0;
  fscanf(fin,"%d",&n);
  int idx[n+1];// vi max==n
  int num[n];
  for(int i=0;i<n;i++){
    int t=0;
    fscanf(fin,"%d",&t);
    num[idx[t]=i]=t;
  }
  // do cac so chi xuat hien 1 lan
  // -> lay min(left) max(right)
  // theo db ta co: l-r+1=w
  int l=idx[1],r=idx[1];
  vector<array<int,3>> ans;
  for(int i=1;i<=n;i++){
    l=min(l,idx[i]);
    r=max(r,idx[i]);
    if(r-l+1==i)ans.push_back({l+1,r+1,i});
  }
  fprintf(fout,"%d\n",(int)ans.size());
  for(auto [l,r,w]:ans){
    fprintf(fout,"%d %d %d\n",l,r,w);
  }
  fclose(fin);
  fclose(fout);
  return 0;
}
