#include <stdio.h>

// helper
int max(int a,int b){
    return a>b?a:b;
}
int main(){
    FILE *fin=fopen("BAI1.INP","r");
    FILE *fout=fopen("BAI1.OUT","w");
    // remember \0 ok?
    int h[27];
    char s[21];

    //idk if the problem have space in between int or what
    // but for safe i will use fscanf
    // which will scan until no more string or whatever to return EOF
    for(int i=0;i<26;i++) if(fscanf(fin,"%d",&h[i])==EOF) break;
    // there is a danger part:
    // if you use fgets then they will start at \n of the prev line
    // which will return nothing or NULL
    // so i used fscanf for the second line
    fscanf(fin,"%s",s);

    int prev=0;
    int count=0;
    for (int i=0;s[i]!='\0';i++){
        if('a'<=s[i]&&s[i]<='z')
            prev=max(h[s[i]-'a'],prev);
        count++;
    }
    fprintf(fout,"%d",count*prev);
    return 0;
}
