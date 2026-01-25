#include <stdio.h>
#include <string.h>

int main(){
    FILE *fin=fopen("BAI2.INP","r");
    FILE *fout=fopen("BAI2.OUT","w");

    char sample[1001];
    char eg[1001];
    fgets(sample,sizeof(sample),fin);
    fgets(eg,sizeof(eg),fin);
    sample[strcspn(sample, "\n")] = '\0';
    int c=0;
    for(int i=0;i<strlen(eg);i++){
        int match=1;
        for(int j=0;j<strlen(sample);j++){
            if(eg[j+i]!=sample[j]){
                match=0;
                break;
            }
        }
        if(match>0)c++;
    }
    fprintf(fout,"%d",c);
    fclose(fin);
    fclose(fout);
    return 0;
}
