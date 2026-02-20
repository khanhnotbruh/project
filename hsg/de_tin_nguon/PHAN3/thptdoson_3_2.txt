Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 3.** Bé Minh Anh đang được học tập đọc các chữ số, bé phát hiện ra
có những số đọc xuôi và ngược đều như nhau, được cô giáo giao bài tập về
nhà với rất nhiều con số để bé tập đọc. Vì tò mò nên bé muốn biết trong
các số cô giao cho có số nào trong các số nêu trên có tổng các chữ số
của nó là lớn nhất và đọc xuôi, ngược là như nhau.

**Yêu cầu**: Bạn hãy giúp Bé Minh Anh tìm được số thỏa mãn trong dãy số
cô giáo giao.

**Dữ liệu:** Vào từ file văn bản **BAI3.INP** gồm:

-   Dòng thứ nhất chứa một số nguyên dương $n$;

-   Dòng tiếp theo chứa $n$ số nguyên dương $a_{i}\ (1 \leq i \leq n)$.

**Kết quả:** Ghi ra file văn bản **BAI3.OUT** hai số nguyên là số tìm
được cùng với tổng các chữ số của nó cách nhau một dấu cách trống.

**Ví dụ:**

+---------------------------+------------------+----------------------+
| **BAI3.INP**              | **BAI3.OUT**     | **Giải thích**       |
+===========================+==================+======================+
| 6                         | 919 19           | Có 11, 121, 12321,   |
|                           |                  | 919 có tổng các chữ  |
| 11 121 12321 234 987 919  |                  | số lần lượt là:      |
|                           |                  | 2,4,9,19             |
+---------------------------+------------------+----------------------+

***Ràng buộc***: - 80% subtask
$\left( 10 \leq a_{i} \leq 100.000.000 \right);N \leq 500.000$;

\- 20% subtask $\left( a_{i} \geq 2.500.000.000 \right);N \leq 10$;

DAPAN

**Bài 3 (9 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 3 | 1  | 1   |                                                 |
|       | -9 |     |                                                 |
| (9    |    |     |                                                 |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

#include \<bits/stdc++.h\>

using namespace std;

bool Doixung(string st) {

bool kt = true;

int N = st.length();

int giua = (int)(N/2);

for (int i = 0; i\<= N/2 ; i++) {

if (st\[i\] != st\[N - i - 1\]) {

kt = false;

break;

}

}

return kt;

}

int Tong(string St)

{

int t = 0;

for (int i = 0; i \< St.length(); i++) t += (int)St\[i\] - 48;

return t;

}

int main() {

ifstream iFile(\"Bai3.inp\");

ofstream oFile(\"Bai3.out\");

if (iFile.is_open() && oFile.is_open()) {

char S;

int N;

iFile \>\> N;

int \_Max = 0;

string Smax = \"\";

string Sub = \"\";

int t = 0;

while (iFile.get(S))

{

if ((S \>= \'0\') && (S \<= \'9\')) Sub += S;

else

if (S==\' \')

{

if (Doixung(Sub))

{

t = Tong(Sub);

if (t \> \_Max)

{

\_Max = t;

Smax = Sub;

}

}

Sub = \"\";

t = 0;

}

}

if (Doixung(Sub))

{

t = Tong(Sub);

if (t \> \_Max)

{

\_Max = t;

Smax = Sub;

}

}

oFile \<\< Smax \<\< \" \" \<\< \_Max;

iFile.close();

oFile.close();

}

return 0;

}
