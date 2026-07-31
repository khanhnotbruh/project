#pragma GCC optimize("O3")
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
  }
  int prev=0;
  for(int i=1;i<=n;i++){
    int tmp=freq[i];
    freq[i]=prev;
    prev+=tmp;
  }
  int start[n+1];memcpy(start,freq,sizeof(freq));
  int *sorted=malloc((m)*sizeof(int));
  for(int i=0;i<m;i++){
    int*cur=inp[i];
    sorted[freq[cur[0]]++]=cur[1];
  }
  int cnt=1,ans=0,stc=0;
  int low[n+1];memset(low,0,sizeof(low));
  int id[n+1];memset(id,0,sizeof(id));
  int dfs[n],scc[n+1],st[n];
  for(int i=1;i<=n;i++){
    if(!id[i]){
      int c=0;
      id[i]=low[i]=cnt++;
      dfs[c++]=i;
      st[stc++]=i;
      while(c){
        bool f=0;
        int head=dfs[c-1];
        for(int j=start[head];j<freq[head];j++){
          int cur=sorted[j];
          start[head]=j+1;
          if(id[cur]){
            low[head]=min(id[cur],low[head]);
          }else{
            dfs[c++]=cur;
            st[stc++]=cur;
            id[cur]=low[cur]=cnt++;
            f=1;
            break;
          }
        }
        if(f)continue;
        // two case: hit a visited node or no more neighbor
        c--;
        if(c>0){
          int p=dfs[c-1];
          low[p]=min(low[p],low[head]);
        }
        if(low[head]==id[head]){
          ans++;
          int node=-1;
          while(node!=head){
            node=st[--stc];
            id[node]=low[node]=INT_MAX;
            scc[node]=head;
          }
        }
      }
    }
  }
  printf("%d",ans);
  free(sorted);
  return 0;
}
