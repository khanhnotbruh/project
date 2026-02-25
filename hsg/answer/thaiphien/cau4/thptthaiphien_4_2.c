#include <limits.h>
#include <stdio.h>
#include <math.h>
int primeOrSquare(int n){
  int sq=sqrt(n);
  if(sq*sq==n)return 2;

  if(n%2==0)return n==2;
  if(n%3==0)return n==3;
  for(int i=5;i*i<n;i+=6){
    if(n%i==0||n%(i+2)==0)return 0;
  }
  return 1;
}
int main(){
  FILE *fin=fopen("BAI4.INP","r");
  FILE *fout=fopen("BAI4.OUT","w");
  int n=0,min=INT_MAX,max=0;
  fscanf(fin,"%d",&n);
  for(int i=0;i<n;i++){
    int t=0;
    fscanf(fin,"%d",&t);
    int res=primeOrSquare(t);
    if(res==1 && t<min)min=t;
    if(res==2 && t>max)max=t;
  }
  fprintf(fout,"%d",min+max);

  fclose(fin);
  fclose(fout);
  return 0;
}
