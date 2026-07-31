#pragma GCC target("avx2","bmi","bmi2","lzcnt","popcnt")

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <limits.h>
int min(int a,int b){return a>b?b:a;}
int main(){
  int n,m;
  scanf("%d %d",&n,&m);
  int inp[m][2];
  int freq[n+1];memset(freq,0,sizeof(freq));
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
  int sorted[m];
  int start[n+1];memcpy(start,freq,sizeof(freq));
  for(int i=0;i<m;i++){
    sorted[freq[inp[i][0]]++]=inp[i][1];
  }
  int dfs[n],st[n];
  int id[n+1],scc[n+1],low[n+1];
  int cnt=1,ans=0,stc=0;
  memset(id,0,sizeof(id));
  memset(scc,-1,sizeof(scc));
  memset(low,0,sizeof(low));
  for(int i=1;i<=n;i++){
    if(!id[i]){
      int c=0;
      id[i]=low[i]=cnt++;
      dfs[c++]=i;
      st[stc++]=i;
      while(c){
        bool f=0;
        int u=dfs[c-1];
        while(start[u]<freq[u]){
          int v=sorted[start[u]++];
          if(id[v]){
            low[u]=min(low[u],id[v]);
          }else{
            f=1;
            id[v]=low[v]=cnt++;
            dfs[c++]=v;
            st[stc++]=v;
            break;
          }
        }
        if(f)continue;
        c--;
        if(c>0){
          int p=dfs[c-1];
          low[p]=min(low[p],low[u]);
        }
        if(id[u]==low[u]){
          int tmp=-1;
          scc[u]=u;
          while(tmp!=u){
            tmp=st[--stc];
            scc[tmp]=u;
            id[tmp]=low[tmp]=INT_MAX;
          }
        }
      }
    }
  }
  for(int i=0;i<m;i++){
    int u=inp[i][0];
    int v=inp[i][1];
    if(scc[u]!=scc[v])
  }
  for(int i=1;i<=n;i++)ans+=(!income[i]&&scc[i]==i);
  printf("%d",ans);
  return 0;
}
//nom nom
