# **VƯƠNG QUỐC KIẾN (ANTS.CPP)** 

Ở vương quốc kiến, các con kiến xây 1 con đường hầm dài và thẳng. Mỗi
gia đình kiến định cư tại một vị trí trên con đường này, nơi mà chúng
sống và dự trữ thức ăn để qua mùa đông giá lạnh.

Các con kiến làm việc rất hiệu quả, chúng đã nhặt được số lượng hạt lúa
mì vượt xa nhu cầu của chúng. Vì vậy, -- để thấy không có định kiến và
cổ vũ các gia đình kiến -- nữ hoàng kiến quyết định mỗi gia đình kiến sẽ
được đón tiếp K thành viên của hoàng gia kiến (***số lượng như nhau đối
với mỗi gia đình***) đến ăn tiệc vào ngày giáng sinh. ***Mỗi thành viên
sẽ ăn đúng một hạt lúa mì.***

Chúng ta được biết số lượng hạt lúa mì được tích tụ lại bởi các gia đình
kiến. Những hạt lúa mì được thu thập bởi một gia đình sẽ được ăn bởi gia
đình này hoặc tặng cho những gia đình khác; trong trường hợp này, hạt
lúa mì phải được vận chuyển. Những con kiến tham gia vận chuyển sẽ ăn 1
hạt lúa mì cho 1m đường đi (bất kể số lượng vận chuyển).

**Yêu cầu:**

Viết chương trình xác định số lượng tối đa K thành viên của hoàng gia
kiến được các gia đình kiến đón tiếp (như nhau cho mọi gia đình). Dữ
liệu vào đảm bảo có lời giải.

**Dữ liệu:**

-   Dòng 1: Số nguyên N là số gia đình. $(1 \leq N \leq 400.000)$

-   N dòng tiếp theo, dòng thứ i là thông tin về gia đình i, gồm 2 số
    nguyên A~i~ và B~i~, A~i~ là vị trí sinh sống của gia đình kiến thứ
    i (bằng khoảng cách từ cửa đường hầm vào) và B~i~ là số lượng hạt
    lúa mì mà gia đình i thu thập được. Các gia đình được viết theo thứ
    tự trên đường hầm (từ ngoài vào trong).
    $(1 \leq A_{i}.B_{i} \leq 1.000.000.000)$. Không có hai gia đình nằm
    ở cùng một vị trí.

**Kết quả:** Số lượng tối đa K thành viên hoàng gia có thể được tiếp đón
bởi các gia đình kiến.

**Ví dụ 1:**

+---------+----------+-------------------------------------------------+
| **      | **       | **GIẢI THÍCH**                                  |
| INPUT** | OUTPUT** |                                                 |
+=========+==========+=================================================+
| 4       | 415      | Có 4 gia đình kiến có vị trí tương ứng 20m,     |
|         |          | 40m, 340m, 360m từ lối vào hầm.                 |
| 20 300  |          |                                                 |
|         |          | Mỗi gia đình sẽ đón tiếp: 415 thành viên        |
| 40 400  |          |                                                 |
|         |          | Gia đình 1 có 300 hạt lúa mì và có thể nhận     |
| 340 700 |          | thêm 115 hạt từ gia đình 2. Những hạt lúa mì    |
|         |          | này phải vận chuyển trên chiều dài 20m, vì vậy  |
| 360 600 |          | gia đình 2 sẽ còn lại: 400 -- 115 -- 20 = 265   |
|         |          | hạt lúa mì.                                     |
|         |          |                                                 |
|         |          | Gia đình 2 còn 265 hạt lúa mì và có thể nhận    |
|         |          | thêm 150 hạt từ gia đình 3 (sẽ phải di chuyển   |
|         |          | 300m). Gia đình 3 còn 700 - 300 -- 150 = 250    |
|         |          | hạt                                             |
|         |          |                                                 |
|         |          | Gia đình 3 còn 250, sẽ nhận thêm 165 hạt từ gia |
|         |          | đình 4 (di chuyển 20m). Gia đình 4 còn 600 --   |
|         |          | 20 -- 165 = 415                                 |
|         |          |                                                 |
|         |          | Mỗi gia đình có thể lưu trữ 415 hạt lúa mì và   |
|         |          | đây là số lượng thành viên lớn nhất mà các gia  |
|         |          | đình có thể đón tiếp.                           |
+---------+----------+-------------------------------------------------+

**Ví dụ 2:**

+---------------------------------+------------------------------------+
| **INPUT**                       | **OUTPUT**                         |
+=================================+====================================+
| 3                               | 85                                 |
|                                 |                                    |
| 20 100                          |                                    |
|                                 |                                    |
| 30 80                           |                                    |
|                                 |                                    |
| 200 150                         |                                    |
+---------------------------------+------------------------------------+

> #include \<bits/stdc++.h\>
>
> #define forinc(i,a,b) for(int i = a; i\<=b; i++)
>
> using namespace std;
>
> pair \<int,int\> a\[400005\];
>
> int n;
>
> bool check(long long x)
>
> {
>
> long long carry = 0;
>
> a\[n+1\].first = a\[n\].first;
>
> forinc(i,1,n)
>
> {
>
> carry = carry + (a\[i\].second - x);
>
> if (carry \>= 0 && carry \<= a\[i+1\].first - a\[i\].first) carry = 0;
>
> else carry = carry - (a\[i+1\].first - a\[i\].first);
>
> }
>
> if (carry \>= 0) return true;
>
> else return false;
>
> }
>
> int main()
>
> {
>
> cin \>\> n;
>
> forinc(i,1,n) cin \>\> a\[i\].first \>\> a\[i\].second;
>
> sort(a+1,a+n+1);
>
> long long l = 1, r = 10e9, mid, res;
>
> while (l\<=r)
>
> {
>
> mid = l + (r-l)/2;
>
> if (check(mid))
>
> {
>
> res = mid;
>
> l = mid + 1;
>
> }
>
> else r = mid - 1;
>
> }
>
> cout \<\< res;
>
> }
