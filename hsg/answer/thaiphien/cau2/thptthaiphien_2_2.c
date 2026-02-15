#include <stdio.h>
// this is tooo easy
// hopefully this will appear in the test
int main(){
    FILE *fin=fopen("BAI2.INP","r");
    FILE *fout=fopen("BAI2.OUT","w");

    char num[256];
    fgets(num,sizeof(num),fin);
    int sum=0;
    for(int i=0;num[i]!='\0';i++){
        if(num[i]>='0'&&num[i]<='9')
            sum+=num[i]-'0';
    }
    fprintf(fout,"%d",sum);
    return 0;
}
