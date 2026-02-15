#include <stdio.h>
#include <stdbool.h>
/*
    * this shit took too long to write (abt 15m)
* i was trying to write it as short as possible but...
* + it take less memory and at the same
* - but harder to debug and continue expanding
*/

int main(){
    FILE *fin=fopen("BAI1.INP","r");
    FILE *fout=fopen("BAI1.OUT","w");

    // 1001 bc fgets does include \0
    // so if not there will be buffer overflow
    // tips: sizeof(char*) only work if it is declare on the same scope
    char s[6][1001];
    for (int i=0;i<6;i++){
        fgets(s[i],sizeof(s[i]),fin);
    }
    char exist[6][26]={0};
    for (int i=0;i<6; i++) {
        for(int j=0;s[i][j]!='\0';j++){
            if('a'<=s[i][j]&&s[i][j]<='z')
                exist[i][s[i][j]-'a']=1;
        }
    }
    for (int i=0; i<6; i+=2) {
        bool ok=1;
        for(int j=0;j<26;j++){
            if(exist[i][j]!=exist[i+1][j]) {
                ok=0;
                break;
            }
        }
        fprintf(fout,ok?"YES\n":"NO\n");
    }
    return 0;
}
