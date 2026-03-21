// this problem doesnt count 0
#include <stdio.h>
int abs(int a){
    return a>0?a:-a;
}
int main(){
    FILE *fin=fopen("BAI2.INP","r");
    FILE *fout=fopen("BAI2.OUT","w");

    char c[256];
    int L=0;
    int C=0;
    fgets(c,sizeof(c),fin);
    for (int i=0;c[i]!='\0';i++){
        int num=c[i]-'0';
        if(num>0&&num<=9){
            if(num%2!=0){
                L++;
            }else{C++;}
        }
    }
    fprintf(fout,"%d",abs(L-C));
    return 0;
}
