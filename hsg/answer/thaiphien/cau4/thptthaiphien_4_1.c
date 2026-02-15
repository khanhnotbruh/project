#include <limits.h>
#include <stdio.h>
int fastPow(int n,int k){
  int ans=1;
  while(n>0){
    if(k&1)ans*=n;
    n*=n;
    k/=2;
  }
  return ans;
}
int removeNumHead(int n,int num){
  int k=1,tmp=num;
  while((tmp/=10)>0) k++;
  return num%fastPow(10,k-n);
}
int removeNumTail(int n,int num){
  while(n-- >0)
    num/=10;
  return num;
}
int min(int a,int b){return a>b?b:a;}

int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");
  int n1=0,n2=0;
  int num1=0,num2=0;
  fscanf(fin,"%d %d",&n1,&num1);
  fscanf(fin,"%d %d",&n2,&num2);

  fprintf(fout,"%d\n",min(removeNumHead(n1,num1),removeNumTail(n1,num1)));
  fprintf(fout,"%d\n",min(removeNumHead(n2,num2),removeNumTail(n2,num2)));

  fclose(fin);
  fclose(fout);
  return 0;
}
