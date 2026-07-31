#pragma GCC optimize("unroll-loops")
#pragma GCC target("avx2,popcnt,bmi2,bmi,lzcnt")
#include <stdbool.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
int max(int a,int b){return a>b?a:b;}
int main(){
  int n,m;
  scanf("%d %d",&n,&m);
  int freq[n+1];memset(freq,0,sizeof(freq));
  int inp[m][2];
  for(int i=0;i<m;i++){
    scanf("%d %d",&inp[i][0],&inp[i][1]);
    freq[inp[i][0]]++;
  }
  int prev=0;
  for(int i=1;i<=n;i++){
    int tmp=freq[i];
    freq[i]=prev;
    prev+=tmp;
  }
  int start[n+1];memcpy(start,freq,sizeof(freq));
  int sorted[m];
  for(int i=0;i<m;i++){
    int u=inp[i][0],v=inp[i][1];
    sorted[freq[u]++]=v;
  }
  //dfs
  int stack[n],c=0;
  int low[n+1],len[n+1];
  memset(len,0,sizeof(freq));
  stack[c++]=1;
  len[n]=1;
  while(c){
    int u=stack[c-1];
    bool f=0;
    while(start[u]<freq[u]){
      int v=sorted[start[u]++];
      if(len[v]){
        len[u]=max(len[u],len[v]+1);
      }else{
        stack[c++]=v;
        f=1;
        break;
      }
    }
    if(f)continue;
    c--;
    if(c>0){
      int p=stack[c-1];
      if(len[u]>0)len[p]=max(len[p],len[u]+1);
    }
  }
  if(!len[1])printf("IMPOSSIBLE");
  else printf("%d",len[1]);
  return 0;
}
