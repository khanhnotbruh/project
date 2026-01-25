#include <stdio.h>
#include <string.h>
/* this problem is too easy
* you just have a count and loop through the main char array
* Note: i cant type vietnamese in those problem so....
*/
int main(){
    FILE *fin=fopen("BAI1.INP","r");
    FILE *fout=fopen("BAI1.OUT","w");
    // 1000 and 1001 is identical
    // but for safe i used 1001
    char c[1001];
    fgets(c,sizeof(c),fin);

    // this variable type is important
    float p=0;
    int count=0;
    for (int i=0;c[i]!='\0';i++){
        if(c[i]=='D'){
            p+=count*0.5+1;
            count++;
        }
        if(c[i]=='S') count=0;
    }
    // i think we need formating bc of the problem's example
    fprintf(fout,"%.1f",p);
    return 0;
}
