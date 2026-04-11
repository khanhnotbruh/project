#include <bits/stdc++.h>
int main(){
  FILE *fin=fopen("BAI1.INP","r");
  FILE *fout=fopen("BAI1.OUT","w");
  
  int n=0,x=0,y=0,z=0;
  fscanf(fin,"%d %d %d %d",&n,&x,&y,&z);
  char ans[101];
  for(int i=0;i<n;i++){
    if(z>0){
      int cur='0';
      if(i>0 && ans[i-1]==cur)cur++;
      ans[i]=cur;
      z--;continue;
    }
    if(x>0){
      int cur='A';
      if(i>0 && ans[i-1]==cur)cur++;
      ans[i]=cur;
      x--;
      continue;
    }
    if(y>0){
      int cur='a';
      if(i>0 && ans[i-1]==cur)cur++;
      ans[i]=cur;
      y--;continue;
    }
  }
  ans[n]='\0';
  fprintf(fout,"%s",ans);
  fclose(fin);fclose(fout);
  return 0;
}
