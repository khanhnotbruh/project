Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Tính tổng.**

Trên một màn hình lớn, người ta lần lượt cho hiện ra các số của một dãy
gồm N số nguyên không âm a~1~, a~2~, ..., a~N~ và cứ lặp đi lặp lại như
thế (nghĩa là sau khi a~i~ xuất hiện vài giây đến lượt a~i+1~ xuất hiện,
số xuất hiện sau a~N~ là a~1~).

***Yêu cầu:*** Bạn được đề nghị tính tổng của K số nguyên liên tiếp xuất
hiện trên màn hình bắt đầu từ số nguyên thứ B.

***Dữ liệu vào*:** Chứa trong file BAI4.INP gồm hai dòng:

\+ Dòng đầu tiên ghi ba số nguyên N, K, và B, 1 ≤ N ≤10^4^; 1 ≤ K ≤ 2.
10^4^ ; 1 ≤ B ≤ 10^9^.

\+ Trong N dòng sau, dòng thứ i chứa số a~i~ (a~i~ \< 2.10^9^).

***Dữ liệu ra*:** Ghi ra file BAI4.OUT một số là tổng tìm được.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| **BAI1.INP**                      | **BAI1.OUT**                      |
+===================================+===================================+
| 6 8 6                             | 36                                |
|                                   |                                   |
| 4                                 |                                   |
|                                   |                                   |
| 5                                 |                                   |
|                                   |                                   |
| 8                                 |                                   |
|                                   |                                   |
| 2                                 |                                   |
|                                   |                                   |
| 1                                 |                                   |
|                                   |                                   |
| 6                                 |                                   |
+-----------------------------------+-----------------------------------+

**DAP AN**

#include \<bits/stdc++.h\>

using namespace std;

int a\[10000\];

int main()

{

//Attach files

freopen(\"BAI4.INP\", \"r\", stdin);

freopen(\"BAI4.OUT\", \"w\", stdout);

//Main program

int n, k, b; scanf(\"%d%d%d\", &n, &k, &b);

for (int i = 0; i \< n; i++) cin \>\> a\[i\];

int i = b - 1, res = 0;

while (k \> 0) {

if (i == n)

i = 0;

res += a\[i\];

i++;

k\--;

}

cout \<\< res;

return 0;

}
