#include <limits.h>
#include <stdio.h>
int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");
  int freq[1001]={0};
  int n=0;
  fscanf(fin,"%d",&n);
  int max=0;
  for(int i=0;i<n;i++){
    int t=0;
    fscanf(fin,"%d",&t);
    if(t>max)max=t;
    freq[t]++;
  }
  long long ans=0;
  for(int i=1;i<=max;i++){
    if(freq[i]==0)continue;
    if(freq[i]>1){
      ans+=(long long)(freq[i]*(freq[i]-1))/2;
    }
    // 1024 is 10 bit which is bigger than 1001
    for(int j=0;j<10;j++){
      int cur=i^(1<<j);
      if(freq[cur]>0 && cur>i && cur<=1000){
        ans+=(long long)freq[i]*freq[cur];
      }
    }
  }
  fprintf(fout,"%lld",ans);
  fclose(fin);
  fclose(fout);
  return 0;
}
