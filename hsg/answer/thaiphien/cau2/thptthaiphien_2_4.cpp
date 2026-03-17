#include <bits/stdc++.h>
using namespace std;
int main(){
  FILE *fin=fopen("BAI2.INP","r");
  FILE *fout=fopen("BAI2.OUT","w");
  int n=0;
  fscanf(fin,"%d",&n);
  char value[101],reversed[101],total[205];
  for(int i=0;i<n;i++){
    fscanf(fin,"%s",value);
    int size=strlen(value);
    for(int j=0;j<size;j++){
      reversed[size-j-1]=value[j];
    }
    reversed[size]='\0';
  }
  return 0;
}
