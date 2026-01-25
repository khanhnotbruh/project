#include <stdio.h>
int main(){
    FILE *fin=fopen("BAI2.INP","r");
    FILE *fout=fopen("BAI2.OUT","w");
    // why there is no string variable? ;-;
    // only char?
    char w[256];
    for (int i=0;fscanf(fin,"%s",w)!=EOF;i++){
        fprintf(fout,"%s\n",w);
    }
    fclose(fin);
    fclose(fout);
    return 0;
}
