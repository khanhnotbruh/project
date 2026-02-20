NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**Bài 4. Hoa hậu bò sữa** (10 điểm) **Tên file: OLYMPIC.CPP**

Bờm có ***n*** con bò vừa đạt huy chương (vàng, bạc hoặc đồng) trong
cuộc thi \"Hoa hậu dành cho các cô bò sữa\". Trong lễ chào mừng sự thành
công của cuộc thi Bờm mời ***m*** thợ ảnh đến chụp ảnh trong buổi lễ.

Các con bò đứng thành một hàng ngang, chúng đều đeo huy chương để chụp
ảnh. Máy ảnh của các thợ chụp ảnh có thể không thể chụp hết toàn bộ
***n*** con bò đạt giải, thợ ảnh thứ ***i*** chỉ có thể chụp được một
dãy các con bò liên tiếp từ vị trí ***l~i~*** đến ***r~i~***.

Sau khi chụp ảnh, Bờm muốn biết trong mỗi bức ảnh của các thợ ảnh có bao
nhiêu con bò đạt huy chương vàng, bao nhiêu con bò đạt huy chương bạc và
bao nhiêu con bò đạt huy chương đồng.

**INPUT:**

-   Dòng đầu tiên là số nguyên dương ***n, m*** (1 ≤ ***n, m*** ≤
    100.000), đó là ***n*** con bò và ***m*** thợ ảnh.

-   Dòng thứ hai chứa các số ***a~1~, a~2~, \..., a~n~*** (1 ≤
    ***a~i~*** ≤ 3) thể hiện huy chương đạt được của các con bò. Trong
    đó:

    -   ***a~i~*** = 1 thể hiện con bò thứ ***i*** đạt huy chương vàng

    -   ***a~i~*** = 2 thể hiện con bò thứ ***i*** đạt huy chương bạc

    -   ***a~i~*** = 3 thể hiện con bò thứ ***i*** đạt huy chương đồng

-   ***m*** dòng tiếp theo, mỗi dòng chứa hai số l và r (1 ≤ ***l*** ≤
    ***r*** ≤ ***n***) thể hiện đoạn liên tiếp các con bò đạt giải có
    trong bức ảnh của mỗi thợ chụp.

**OUTPUT:**

-   Gồm ***m*** dòng, mỗi dòng chứa ba số nguyên là số lượng con bò đạt
    huy chương vàng, huy chương bạc và huy chương đồng.

***Ví dụ:***

+----------------------------------+-----------------------------------+
| **INPUT**                        | **OUTPUT**                        |
+==================================+===================================+
| 6 3                              | 3 2 1                             |
|                                  |                                   |
| 2 1 1 3 2 1                      | 1 0 0                             |
|                                  |                                   |
| 1 6                              | 2 0 1                             |
|                                  |                                   |
| 3 3                              |                                   |
|                                  |                                   |
| 2 4                              |                                   |
+----------------------------------+-----------------------------------+

**DAPAN**

#include \<bits/stdc++.h\>

using namespace std;

int main(){

freopen(\"olympic.inp\", \"r\", stdin);

freopen(\"olympic.out\", \"w\", stdout);

int n, m; cin \>\> n \>\> m;

int x;

int v\[100001\] = {}, b\[100001\] = {}, d\[100001\] = {};

for (int i = 1; i \<= n; i++)

{

cin \>\> x;

v\[i\]=v\[i-1\] + (x==1?1:0);

b\[i\]=b\[i-1\] + (x==2?1:0);

d\[i\]=d\[i-1\] + (x==3?1:0);

}

for (int i = 0; i \< m; i++){

long long l, r; cin \>\> l \>\> r;

cout \<\< v\[r\] - v\[l-1\] \<\< \" \" \<\< b\[r\] - b\[l-1\] \<\< \" \"
\<\< d\[r\] - d\[l-1\] \<\< endl;

}

return 0;

}
