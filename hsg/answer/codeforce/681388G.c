#pragma GCC optimize("unroll-loops")
#pragma GCC target("avx2,bmi,bmi2,lzcnt,popcnt")
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <limits.h>
#include <stdlib.h>
int min(int a,int b){return a>b?b:a;}
int main(){
  int n,m;
  scanf("%d %d",&n,&m);
  int inp[m][2];
  int freq[n+1];memset(freq,0,sizeof(freq));
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
  int *sorted=malloc((m*2)*sizeof(int));
  for(int i=0;i<m;i++){
    int*cur=inp[i];
    sorted[freq[cur[0]]++]=cur[1];
    sorted[freq[cur[1]]++]=cur[0];
  }
  int cnt=1,stc=0,tp=0;
  int low[n+1];memset(low,0,sizeof(low));
  int id[n+1];memset(id,0,sizeof(id));
  int dfs[n],st[n];
  bool sp[n+1];memset(sp,0,sizeof(sp));
  //dfs
  for(int i=1;i<=n;i++){
    if(!id[i]){
      int c=0;
      id[i]=low[i]=cnt++;
      dfs[c++]=i;
      st[stc++]=i;
      while(c){
        bool f=0;
        int u=dfs[c-1];
        for(int j=start[u];j<freq[u];j++){
          int v=sorted[j];
          start[u]=j+1;
          if(c>1&&v==dfs[c-2]&&!sp[u]){
            sp[u]=1;
            continue;
          }
          if(id[v]){
            low[u]=min(id[v],low[u]);
          }else{
            dfs[c++]=v;
            st[stc++]=v;
            id[v]=low[v]=cnt++;
            f=1;
            break;
          }
        }
        if(f)continue;
        c--;
        if(c>0){
          int p=dfs[c-1];
          low[p]=min(low[p],low[u]);
        }
        if(low[u]==id[u]){
          int cur=-1;
          while(cur!=u){
            cur=st[--stc];
            id[cur]=INT_MAX;
            low[cur]=tp;
          }
          tp++;
        }
      }
    }
  }
  memset(freq,0,sizeof(freq));
  for(int i=0;i<m;i++){
    int u=low[inp[i][0]],v=low[inp[i][1]];
    if(u!=v){
      freq[u]++;
      freq[v]++;
    }
  }
  prev=0;
  for(int i=0;i<=n;i++){
    int tmp=freq[i];
    freq[i]=prev;
    prev+=tmp;
  }
  memcpy(start,freq,sizeof(freq));
  for(int i=0;i<m;i++){
    int u=low[inp[i][0]],v=low[inp[i][1]];
    if(u!=v){
      sorted[freq[u]++]=v;
      sorted[freq[v]++]=u;
    }
  }
  //reuse st as distance
  int *cdist=st,*mdist=low,distance=0;
  for(int i=0;i<n;i++){
    st[i]=-1;
    dfs[i]=0;
  }
  for(int i=0; i <=n; i++){
    low[i]=0;
  }

  for(int i=1;i<=n;i++){
    if(cdist[i]==-1){
      int c=0;
      dfs[c++]=i;
      cdist[i]=0;
      while(c){
        bool f=0;
        int u=dfs[c-1];
        for(int i=start[u];i<freq[u];i++){
          start[u]=i+1;
          int v=sorted[i];
          if(c>1&&v==dfs[c-2])continue;
          if(cdist[v]==-1){
            f=1;
            cdist[v]=cdist[u]+1;
            dfs[c++]=v;
            break;
          }
        }
        if(f)continue;
        c--;
        if(c>0){
          int p=dfs[c-1];
          int cur=mdist[u];
          if(cur+mdist[p]+1>distance)distance=cur+mdist[p]+1;
          if(cur+1>mdist[p])mdist[p]=cur+1;
        }
      }
    }
  }
  printf("%d",tp-1-distance);
  free(sorted);
  return 0;
}
