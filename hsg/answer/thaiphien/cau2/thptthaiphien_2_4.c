#include <stdio.h>
#include <string.h>

// this code is kind of obsolete
// worst case o(n^3)
// which is enough for pass but not for the fist prize ;-;


int main() {
  FILE *fin = fopen("BAI2.INP", "r");
  FILE *fout =fopen("BAI2.OUT", "w");

  int n;
  fscanf(fin, "%d\n", &n);

  char s[n][101];
  for(int i=0;i<n;i++){
    fscanf(fin,"%s",s[i]);
  }
  //the actual processing things

  for(int i=0;i<n;i++){
    int size=strlen(s[i]);
    for(int j=0;j<size;j++){
      int l=j;
      int r=size-1;
      int is_palidrom=1;
      while(l<r){
        if(s[i][l]!=s[i][r]){
          is_palidrom=0;
          break;
        }
        l++;
        r--;
      }
      if (is_palidrom){
        fprintf(fout,"%s",s[i]);
        for(int t=j-1;t>=0;t--){
          fputc(s[i][t],fout);
        }
        fprintf(fout, "\n");
        break;
      }
    }
  }


  fclose(fin);
  fclose(fout);
  return 0;
}
