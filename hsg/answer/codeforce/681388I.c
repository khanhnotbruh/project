#pragma GCC target("avx2,lzcnt,popcnt,bmi,bmi2")

#include <stdio.h>
#include <limits.h>
#include <string.h>
#include <stdbool.h>

int min(int a,int b){return a>b?b:a;}
int main(){
  int n,m;
  scanf("%d %d",&n,&m);
  int inp[m][2];
  int freq[n+1];
  memset(freq,0,sizeof(freq));
  for(int i=0;i<m;i++){
    scanf("%d %d",&inp[i][0],&inp[i][1]);
    freq[inp[i][0]]++;
    freq[inp[i][1]]++;
  }
  int prev=0;
  for(int i=1;i<=n;i++){
    int tmp=freq[i];
    freq[i]=prev;
    prev+=tmp;
  }
  int start[n+1];memcpy(start,freq,sizeof(freq));
  int strt[n+1];memcpy(strt,freq,sizeof(freq));
  int sorted[m*2];
  for(int i=0;i<m;i++){
    int u=inp[i][0];
    int v=inp[i][1];
    sorted[freq[u]++]=v;
    sorted[freq[v]++]=u;
  }

  int st[n],dfs[n];
  int id[n+1],low[n+1],scc[n+1];
  memset(id,0,sizeof(id));
  memset(low,0,sizeof(low));
  memset(scc,0,sizeof(scc));
  int stc=0,cnt=1,ans=0;
  // just to be sure
  for(int i=1;i<=n;i++){
    if(!id[i]){
      int c=0;
      id[i]=low[i]=cnt++;
      st[stc++]=i;
      dfs[c++]=i;
      while(c){
        bool f=0;
        int u=dfs[c-1];
        while(start[u]<freq[u]){
          int v=sorted[start[u]++];
          int p=c>1?dfs[c-2]:0;
          if(v==p)continue;
          if(!id[v]){
            st[stc++]=v;
            dfs[c++]=v;
            id[v]=low[v]=cnt++;
            f=1;
            break;
          }else{
            low[u]=min(low[u],id[v]);
          }
        }
        if(f)continue;
        c--;
        if(c>0){
          int p=dfs[c-1];
          low[p]=min(low[p],low[u]);
        }
        if(low[u]==id[u]){
          int node=-1;
          while(node!=u){
            node=st[--stc];
            low[node]=id[node]=INT_MAX;
            scc[node]=u;
          }
        }
      }
    }
  }
  int deg[n+1];memset(deg,0,sizeof(deg));
  for(int u=1;u<=n;u++){
    while(strt[u]<freq[u]){
      int v=sorted[strt[u]++];
      deg[scc[v]]+=scc[u]!=scc[v];
    }
  }
  for(int i=1;i<=n;i++)ans+=deg[i]==1;
  printf("%d",(ans+1)/2);
  return 0;
}
