#include <bits/stdc++.h>
#include <climits>
#define INF INT_MAX/2
int main(){
  FILE *fin=fopen("BAI3.INP","r");
  FILE *fout=fopen("BAI3.OUT","w");
  
  int r,c;
  fscanf(fin,"%d %d",&r,&c);
  r++;c++;
  //-dp is the cost in the current channel  
  //to transfer i packages
  //-trace is used for printing the answer
  int cost[r][c],dp[r],trace[r][c];
  for(int i=0;i<r;i++){
    trace[r][0]=0;
    dp[i]=INF;
  }
  for(int j=0;j<c;j++)trace[0][j]=0;
  for(int i=1;i<r;i++){
    for(int j=1;j<c;j++){
      fscanf(fin,"%d",&cost[i][j]);
    }
  }
  /*
   * we use dp[i] for:
   * saving prev best for i packages sent
   * overwrite that to become current
   * which will eventualy become prev
   * */
  dp[0]=0;
  for(int j=1;j<c;j++){
    // we traverse backward bc we are using prev value
    // if we traverse forward we may use some updated value
    for(int i=r;i--;){
      // best value in this channel
      int best_val=INF;
      // k of the best value
      int best_k=0;
      // for package we want to sent on this channels
      for(int k=0;k<=i;k++){
        // current cost
        int cur=(k==0)?0:cost[k][j];
        // the prev cost if we want to sent k packages
        int prev=dp[i-k];
        if(prev!=INF&&prev+cur<best_val){
          best_val=prev+cur;
          best_k=k;
        }
      }
      dp[i]=best_val;
      trace[i][j]=best_k;
    }
  }
  fprintf(fout,"%d\n",dp[r-1]);
  int ans[c];
  int n=r-1;
  for(int j=c;--j;){
    ans[j]=trace[n][j];
    n-=ans[j];
  }
  for(int j=1;j<c;j++)fprintf(fout,"%d\n",ans[j]);
  fclose(fin);fclose(fout);
  return 0;
}
