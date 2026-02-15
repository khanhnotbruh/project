#include <stdio.h>
#include <limits.h>
int max(int a,int b){return a>b?a:b;}
int min(int a,int b){return a>b?b:a;}
int main(){
    FILE *fin=fopen("BAI3.INP","r");
    FILE *fout=fopen("BAI3.OUT","w");

    int n=0,k=0;
    fscanf(fin,"%d %d",&n,&k);
    int arr[n];

    int mod_prf[n];
    int cnt[k];
    for(int i=0;i<k;i++)cnt[i]=0;
    fscanf(fin,"%d",&arr[0]);
    int prf=arr[0];
    mod_prf[0]=prf%k;
    cnt[mod_prf[0]]=0;
    for(int i=1;i<n;i++){
        fscanf(fin,"%d",&arr[i]);
        prf+=arr[i];
        mod_prf[i]=prf%k;
        cnt[mod_prf[i]]=max(i,cnt[mod_prf[i]]);
    }
    // CRUCIAL PART
    cnt[0]=-1;
    //DO NOT DELETE

    // prf is prefix
    // mod_prf is prf%k
    // we have (prf[r]-prf[l])%k==0;
    // -> prf[r]%k==prf[l]%k
    // to optimize in the loop we dont need prf as an array
    // (bc i dont use it in the loop)
    // we use cnt to keep track of the farthest point that have same mod
    int ans=0;
    int bl=INT_MAX;
    int br=0;
    for(int i=n-1;i>=0;i--){
        if(cnt[mod_prf[i]]-i>ans){
            bl=i;
            br=cnt[mod_prf[i]];
            ans=cnt[mod_prf[i]]-i;
        }
    }

    // printing ans
    fprintf(fout,"%d\n",ans);
    int sum=0;
    for(int i=bl;i<=br;i++){
        fprintf(fout,"%d ",arr[i]);
        sum+=arr[i];
    }
    fprintf(fout,"\n%d",sum);

    fclose(fin);
    fclose(fout);
    return 0;
}
