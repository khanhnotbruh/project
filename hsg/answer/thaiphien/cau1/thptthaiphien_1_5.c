#include <stdio.h>
/*
* this problem's instruction is very unclear
* but i will follow the example result so...
*/
int main(){
    FILE *fin=fopen("BAI1.INP","r");
    FILE *fout=fopen("BAI1.OUT","w");
    //always remember to include space for \0
    char c[1001];
    fgets(c,sizeof(c),fin);
    int open=0;
    for(int i=0;c[i]!='\0';i++){
        // "';*9 dcm 9*;'"
        // the if statement placement cant be changed
        // bc that will lead to more { or }
        if(c[i]=='{') open++;
        if(open==0) fprintf(fout,"%c",c[i]);
        if(c[i]=='}') if(open>0) open--;
    }
    return 0;
}
