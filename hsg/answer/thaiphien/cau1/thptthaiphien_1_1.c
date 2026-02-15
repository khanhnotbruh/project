#include <stdio.h>
#include <ctype.h>

/*
* uh... in the fist time i did this
* i dont see the "co mat" so i just over cooked it
* in short term, i printed all the same word
* while the problem only need all the showed char
* - dung hoi bo may vi sao
*/

int main(){
    FILE *fin = fopen("BAI1.INP", "r");
    FILE *fout = fopen("BAI1.OUT", "w");
    // 255+1 bc fgets does have \0
    char s1[256];
    char s2[256];

    fgets(s1,sizeof(s1),fin);
    fgets(s2,sizeof(s2),fin);

    int exist1[26]={0};
    int exist2[26]={0};
    for(int i=0;s1[i]!='\0';i++){
        if(isalpha(s1[i]))
            exist1[tolower(s1[i])-'a']++;
    }

    for(int i=0;s2[i]!='\0';i++){
        if(isalpha(s2[i]))
            exist2[tolower(s2[i])-'a']++;
    }

    // we should only print all the character that appear ONCE
    for (int i=0; i<26;i++) {
        if(exist1[i]&&exist2[i]){
            fprintf(fout,"%c",i+'a');
            /* hall of shame:
            for(int j=0;j<(exist1[i]>exist2[i]?exist2[i]:exist1[i])+1;j++){
                fprintf(fout,"%c",i+'a');
            }
            */
        }
    }
    fclose(fin);
    fclose(fout);
    return 0;
}
