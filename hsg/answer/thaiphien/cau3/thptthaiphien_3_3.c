#include <stdlib.h>
#include <stdio.h>

int main(){
    FILE *fin=fopen("BAI3.INP","r");
    FILE *fout=fopen("BAI3.OUT","w");
    int n=0;
    fscanf(fin,"%d",&n);
    int point[1001]={0};
    for(int i =0;i<n;i++){
        int id=0;
        fscanf(fin,"%d",&id);
        point[id]++;
    }
    int mx = 0;
    for (int i = 1; i <= 1000; i++)
        if (point[i] > mx)
            mx = point[i];

    for (int i = 1; i <= 1000; i++)
        if (point[i] == mx)
            fprintf(fout, "%d\n", i);

    fclose(fin);
    fclose(fout);
    return 0;
}
