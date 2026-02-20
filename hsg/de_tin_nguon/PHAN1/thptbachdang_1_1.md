Đinh Thị Mai Huyền -- THPT Bạch Đằng

**CAU HOI**

**Đếm và tính tổng số chẵn**

**Yêu cầu**: Đếm và tính tổng các số chẵn gồm 2 chữ số được ghép bởi các
số trong phạm vi từ m đến n với các số trong phạm vi từ p đến q.

**Dữ liệu vào**: Cho trong tệp BAI1.INP gồm:

\- Dòng thứ nhất ghi 2 số m, n (1 ≤ m ≤ n ≤ 9); mỗi số cách nhau 1 dấu
cách

\- Dòng thứ hai ghi 2 số p, q (0 ≤p ≤ q ≤ 9); mỗi số cách nhau 1 dấu
cách

**Dữ liệu ra**: Ghi ra tệp **BAI1.OUT** gồm hai dòng:

\- Dòng đầu ghi 1 số là số lượng số chẵn có 2 chữ số.

\- Dòng thứ 2 ghi kết quả là tổng các số chẵn đó.

**Ví dụ:**

+----------------------------------+-----------------------------------+
| **BAI1.INP**                     | **BAI1.OUT**                      |
+==================================+===================================+
| 1 9                              | **45**                            |
|                                  |                                   |
| 0 9                              | **2430**                          |
+----------------------------------+-----------------------------------+

+----------------------------------+-----------------------------------+
| **BAI1.INP**                     | **BAI1.OUT**                      |
+==================================+===================================+
| 5 9                              | **5**                             |
|                                  |                                   |
| 7 9                              | **390**                           |
+----------------------------------+-----------------------------------+

**DAP AN**

#include \<bits/stdc++.h\>

using namespace std;

int main()

{

//Attach files

freopen(\"BAI1.INP\", \"r\", stdin);

freopen(\"BAI1.OUT\", \"w\", stdout);

//Main program

int n, m, p, q, Temp = 0, s = 0;

cin \>\> n \>\> m \>\> p \>\> q;

for (int i = p; i \<= q; i++)

if (!(i & 1))

Temp += i, s++;

printf(\"%d\\n\", s \* (m - n + 1));

Temp \*= (m - n + 1);

for (int i = n; i \<= m; i++)

Temp += (i \* 10 \* s);

cout \<\< Temp;

return 0;

}
