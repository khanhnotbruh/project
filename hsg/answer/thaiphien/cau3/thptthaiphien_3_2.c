#include <stdio.h>
#include <stdlib.h>
int isPrime(long long n){
    if(n<2)return 0;
    if(n%2==0)return n==2;
    for(long long i=2;i*i<=n;i++){
        if(n%i==0)return 0;
    }return 1;
}


int main(){
    FILE *fin =fopen("BAI3.INP","r");
    FILE *fout=fopen("BAI3.OUT","w");
    int n=0,target=0;
    fscanf(fin,"%d %d",&n,&target);
    int c=0;
    for(int i=0;i<n;i++){
        int num=0;
        fscanf(fin,"%d",&num);
        if(isPrime(num)==1&&num<target)c++;
    }
    fprintf(fout,"%d",c);
    fclose(fin);
    fclose(fout);
    return 0;
}
