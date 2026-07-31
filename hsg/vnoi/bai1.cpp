#include <bits/stdc++.h>
using namespace std;
// 2 8 1 4 3
//
// 1 2 3 4 8
// 1 2 3|4 8
// 1 2|3|4|8
// 1|2
//
// 1 3 5 6 8 9
// 1 3 5|6 8 9
// 1 3|5|6 8|9
// 1|3   6|8
void build(vector<vector<int>>&tree,vector<int>&nums,int l,int r,int level,int logn){
  if(level==logn-1){
    tree[l][level]=nums[l];
    return;
  }
  int m=(r-l)/2+l;
  build(tree,nums,l,m,++level,logn);
  build(tree,nums,m+1,r,level,logn);
  //merge
  int i=l,j=m+1,c=l;
  while(i<=m&&j<=r){
    if(tree[i][level]<=tree[j][level]){
      tree[c++][level-1]=tree[i++][level];
    }else {
      tree[c++][level-1]=tree[j++][level];
    }
  }
  while(i<=m)tree[c++][level-1]=tree[i++][level];
  while(j<=r)tree[c++][level-1]=tree[j++][level];
}
// [l,r] ->pls preprocess r
void collect(vector<vector<int>>&tree,vector<pair<int,int>>&seg,int&cseg,int l,int r,int qr,int ql,int level){
  //outside
  if(l>qr||r<ql)return;
  //fully inside
  if(l>=ql&&r<=qr){
    seg[cseg++]={l,r};
    return;
  }
  //overlap
  int m=(r-l)/2+l;
  query(tree,seg,cseg,l,m,qr,ql,level+1);
  query(tree,seg,cseg,m+1,r,qr,ql,level+1);
}
int max_dif(vector<vector<int>>&tree,int l,int r,int logn){
  int n=tree.size(),cseg=0;
  vector<pair<int,int>> seg(logn,{0,0});
  collect(tree,seg,cseg,0,n,l,r);
  vector<int> sorted(l-r+1,0);
  int c=0;
  //merge
  int L1=seg[0].first,R2=seg[0].second;
  int level1=logn-log2(R1-L1+1);
  for(int i=L1;i<=R1;i++){
    sorted[i-L1]=tree[i][level1];
  }

  for(int i=1;i<logn;i++){
    int L2=seg[i].first,R2=seg[i].second;
    int level2=logn-log2(R2-L2+1);
    while(L1<=R1&&L2<=R2){
      if(tree[L1][level1]<=tree[L2][level2]){

      }else{

      }
    }
  }
}

int main() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);
  int n,q;
  cin>>n>>q;
  vector<int> nums(n);
  for(int i=0;i<n;i++)cin>>nums[i];
  int logn=log2(n);

  // merge sort tree (first time btw)
  vector<vector<int>> tree(n,vector<int>(,0));
  build(tree,nums,0,n-1,0,logn);
  for(int i=0;i<q;i++){
    int L,R;
    cin>>L>>R;
    L--;R--;
  }
  return 0;
}
