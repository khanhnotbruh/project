#include <stdio.h>
#include <string.h>

int main(){
  int n,m;
  scanf("%d %d",&n,&m);
  int inp[m][2];
  int freq[n+1];memset(freq,0,sizeof(freq));
  int in[n+1];memset(in,0,sizeof(in));
  for(int i=0;i<m;i++){
    int *cur=inp[i];
    scanf("%d %d",&cur[0],&cur[1]);
    freq[cur[0]]++;
    in[cur[1]]++;
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
    int u=inp[i][0];
    int v=inp[i][1];
    sorted[freq[u]++]=v;
  }
  int q[n],topo[n];
  int head=0,tail=0,c=0;
  for(int i=1;i<=n;i++){
    if(in[i]==0){
      q[tail++]=i;
    }
  }
  while(head<tail){
    int u=q[head++];
    topo[c++]=u;
    while(start[u]<freq[u]){
      int v=sorted[start[u]++];
      in[v]--;
      if(in[v]==0)q[tail++]=v;
    }
  }
  if(c!=n){
    printf("IMPOSSIBLE");
    return 0;
  }
  for(int i=0;i<n;i++){
    printf("%d ",topo[i]);
  }
  return 0;
}
