#include <stdio.h>

int main(){
  int n=0;
  scanf("%d",&n);
  int num[n];
  for(int i=0;i<n;i++)scanf("%d",&num[i]);
  for(int k=0;k<n;k++){
    int cur=0;
    for(int i=n-k-1;i<n;i++){
      if(cur<num[i])cur+=num[i];
      else cur-=num[i];
    }
    printf("%d ",cur);
  }
  return 0;
}
