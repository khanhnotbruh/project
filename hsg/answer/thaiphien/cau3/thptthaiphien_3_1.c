#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>
typedef struct{
    long long value;
    int k;
}node;
int cmp(const void *a,const void *b){
    const node *x=(const node*)a;
    const node *y=(const node*)b;
    return (x->value>y->value)-(x->value<y->value);
}

int main(){
    FILE *fin=fopen("BAI3.INP","r");
    FILE *fout=fopen("BAI3.OUT","w");

    long long a,b,n;
    fscanf(fin,"%lld %lld %lld",&n,&a,&b);
    node *arr=malloc(n * sizeof(node));
    for(int i=0;i<n;i++){
        fscanf(fin,"%lld %d",&arr[i].value,&arr[i].k);
    }
    qsort(arr,n,sizeof(node),cmp);
    long long ans=LONG_LONG_MAX;
    int update=0;
    long long l=0,r=0,c1=0,c2=0;
    while(r<n){
        if(arr[r].k==1)c1++;
        if(arr[r].k==2)c2++;
        while(c1>=a&&c2>=b){
            long long length=arr[r].value-arr[l].value;
            if(length<ans){
                update=1;
                ans=length;
            }
            if(arr[l].k==1)c1--;
            if(arr[l].k==2)c2--;
            l++;
        }
        r++;
    }
    if(update==1){
        fprintf(fout,"%lld",ans);
    }else fprintf(fout,"%d",-1);

    free(arr);
    fclose(fin);
    fclose(fout);
    return 0;
}
