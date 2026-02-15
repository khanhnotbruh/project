#include <stdio.h>
#include <stdlib.h>
int flip(int a){
    int ans=0;
    while (a>0){
        ans=ans*10+a%10;
        a/=10;
    }
    return ans;
}
int isPrime(int a){
    if(a<2)return 0;
    if(a%2==0)return a==2;
    for(int i=3;i*i<=a;i+=2){
        if(a%i==0)return 0;
    }return 1;
}
int main(){
    FILE *fin =fopen("BAI3.INP","r");
    FILE *fout =fopen("BAI3.OUT","w");
    int min=0,max=0;
    fscanf(fin,"%d %d",&min,&max);
    for(int i=min;i<max+1;i++){
        if(isPrime(flip(i))==1)fprintf(fout,"%d\n",i);
    }
    fclose(fin);
    fclose(fout);
    return 0;
}
