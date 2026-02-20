Phạm Minh Khôi -- THPT Đồ Sơn

CAUHOI

**Bài 1.** Bạn Bon được cô giáo giao nhiệm vụ kiểm tra 2 xâu xem số
lượng chữ số trong 2 đoạn văn bản cho trước được sử dụng là bao nhiêu,
nếu số lượng chữ số giống nhau thì được gọi là xâu tương đồng.

**Yêu cầu**: Hãy cho biết hai xâu có tương đồng với nhau không?

**Dữ liệu:** Vào từ file văn bản **BAI1.INP** gồm hai xâu ký tự (chỉ bao
gồm chữ cái, chữ số và dấu cách trống).

\- Dòng 1: Ghi xâu thứ nhất;

\- Dòng 2: Ghi xâu thứ hai.

**Kết quả:** Ghi ra file văn bản **BAI1.OUT**: Các kết quả ngăn cách
nhau 01 dấu cách trống.

-   Yes cùng số lượng chữ số của một trong hai xâu nếu hai xâu có số
    lượng chữ số bằng nhau ;

-   No cùng số lượng chữ số xâu 1 tiếp theo là số lượng chữ số của xâu
    2.

**Ví dụ:**

+-----------------------+-----------------------+----------------------+
| **BAI1.INP**          | **BAI1.OUT**          | **Giải thích**       |
+=======================+=======================+======================+
| Nam 1944              | No 4 2                | Không tương đồng vì  |
|                       |                       | xâu 1 có 4 số; xâu 2 |
| Thang 12              |                       | có 2 số              |
+-----------------------+-----------------------+----------------------+
| Lop 11b1              | Yes 3                 | Tương đồng vì xâu 1  |
|                       |                       | có 3 số; xâu 2 có 3  |
| Lop 12a1              |                       | số                   |
+-----------------------+-----------------------+----------------------+

***Ràng buộc***: - 80% subtask xâu có độ dài $\leq$`<!-- -->`{=html}255;

\- 20% subtask xâu có độ dài $\leq$`<!-- -->`{=html}1000.

DAPAN

**Bài 1 (6 điểm):**

+-------+----+-----+-------------------------------------------------+
| **    | ** | **  | **Mô tả yêu cầu**                               |
| Bài** | Te | Điể |                                                 |
|       | st | m** |                                                 |
|       | ** |     |                                                 |
+=======+====+=====+=================================================+
| Bài 1 | 1  | 1.2 | -   Xâu ký tự có độ dài tối đa 255 ký tự        |
|       | -5 |     |                                                 |
| (6    |    |     | -   Thời gian chạy tối đa 0.5 giây              |
| điểm) |    |     |                                                 |
+-------+----+-----+-------------------------------------------------+

#include \<bits/stdc++.h\>

using namespace std;

string st1,st2;

int main() {

#define task\"bai1\"

freopen(task\".inp\", \"r\", stdin);

freopen(task\".out\", \"w\", stdout);

int kq1 = 0;

int kq2 = 0;

getline(cin, st1);

getline(cin, st2);

for (int i=0;i\<st1.length(); i++)

if ((st1.substr(i, 1) \>=\"0\") & (st1.substr(i, 1) \<=\"9\")) kq1++;

for (int i=0;i\<st2.length(); i++)

if ((st2.substr(i, 1) \>=\"0\") & (st2.substr(i, 1) \<=\"9\")) kq2++;

if (kq1==kq2) cout \<\< \"Yes \"\<\< kq1;

else cout \<\< \"No \" \<\< kq1 \<\< \" \" \<\< kq2;

return 0;

}
