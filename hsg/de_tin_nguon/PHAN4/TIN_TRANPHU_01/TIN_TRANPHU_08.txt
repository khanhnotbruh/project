**ROCK**

Có một dãy các hòn đá xếp thẳng hàng, hòn đá đầu tiên ở tọa độ 0, hòn đá
cuối cùng ở L. Giữa 2 hòn đá này là N hòn đá khác.

HT muốn loại bỏ M hòn đá trong số N hòn đá giữa sao cho khoảng cách ngắn
nhất giữa 2 hòn đá liền kề là lớn nhất?

**Dữ liệu:**

-   Dòng 1: L, N, M
    $(1 \leq L \leq 1.000.000.000;0 \leq N \leq 50.000;0 \leq M \leq N)$

-   N dòng tiếp theo, dòng thứ I ghi $d_{i}$ là khoảng cách của của hòn
    đá I với hòn đá đầu tiên (tọa độ 0) $\left( 0 < d_{i} < L \right)$

**Kết quả:** Ghi 1 số là giá trị lớn nhất của khoảng cách ngắn nhất giữa
2 hòn đá liền kề sau khi loại bỏ M hòn đá.

**Ví dụ:**

+--------------+-------------+----------------------------------------+
| **INPUT**    | **OUTPUT**  |                                        |
+==============+=============+========================================+
| 25 5 2       | 4           | -   Trước khi loại bỏ 2 hòn đá:        |
|              |             |     $kc = 2$                           |
| 2            |             |                                        |
|              |             | -   Loại bỏ hòn đá ở tọa độ 2, 14 thì  |
| 14           |             |     $kc = 4$                           |
|              |             |                                        |
| 11           |             |                                        |
|              |             |                                        |
| 21           |             |                                        |
|              |             |                                        |
| 17           |             |                                        |
+--------------+-------------+----------------------------------------+

> #include\<bits/stdc++.h\>
>
> #define forinc(i,a,b) for(int i=a;i\<=b;++i)
>
> using namespace std;
>
> long long l,n,m;
>
> long long a\[50010\];
>
> bool check(long long x)
>
> { long long last = 0,i,hit =0;
>
> forinc(i,1,n+1)
>
> {
>
> if((a\[i\]-a\[last\])\<x) hit++;
>
> else last =i;
>
> }
>
> return(hit \<= m);
>
> }
>
> int main()
>
> {
>
> ios_base::sync_with_stdio(false);
>
> cin\>\>l\>\>n\>\>m;
>
> forinc(i,1,n) cin\>\>a\[i\];
>
> a\[0\]=0;
>
> a\[n+1\]=l;
>
> sort(a+1,a+n+1);
>
> long long dau=1;
>
> long long cuoi=l+1;
>
> long long res=0;
>
> while(dau\<=cuoi)
>
> {
>
> long long giua=(dau+cuoi)/2;
>
> if(check(giua))
>
> {
>
> res=giua;
>
> dau=giua+1;
>
> }
>
> else cuoi=giua-1;
>
> }
>
> cout\<\<res;
>
> }
