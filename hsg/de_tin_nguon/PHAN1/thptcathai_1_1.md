**Bùi Thị Thu Hằng -- THPT Cát Hải**

**CAUHOI**

**Đếm số nguyên tố (6điểm)**

Cho dãy số gồm N số.

***Yêu cầu:***Đếm số nguyên tố trong dãy.

***Dữ liệu vào:***Cho trong file văn bản **BAI1.TXT** gồm:

-   Dòng đầu tiên ghi 1 số nguyên **N** là số phần tử của dãy.

-   Dòng thứ hai ghi N số của dãy số.

Các số cách nhau bởi ít nhất một khoảng trắng.

***Kết quả:***Đưa ra file văn bản **BAI1_OUT.TXT** là

\- Dòng 1 ghi các số nguyên tố của dãy giữ nguyên thứ tự xuất hiện (mỗi
số cách nhau một dấu cách).

\- Dòng 2 ghi số lượng số nguyên tố trong dãy.

\- Dòng 3 ghi tổng của các số nguyên tố trong dãy.

***Ví dụ:***

+----------------------------------+-----------------------------------+
| BAI1**.TXT**                     | BAI1**\_OUT.TXT**                 |
+==================================+===================================+
| **6**                            | **7 2**                           |
|                                  |                                   |
| **6 8 7 1 8 2**                  | **2**                             |
|                                  |                                   |
|                                  | **9**                             |
+----------------------------------+-----------------------------------+

DAPAN

+------+----------------------------+----------------+----------------+
| *    | BAI1**.TXT**               | BAI            | **Điểm**       |
| *Bài |                            | 1**\_OUT.TXT** |                |
| 1**  |                            |                |                |
+======+============================+================+================+
| Test | 7                          | 5 2            | 1              |
| 1    |                            |                |                |
|      | 5 1 15 4 20 2 8            | 2              |                |
|      |                            |                |                |
|      |                            | 7              |                |
+------+----------------------------+----------------+----------------+
| Test | 6                          | 5 5 5 5 5      | 1              |
| 2    |                            |                |                |
|      | 6 5 5 5 5 5                | 5              |                |
|      |                            |                |                |
|      |                            | 25             |                |
+------+----------------------------+----------------+----------------+
| Test | 5                          | Không có       | 1              |
| 3    |                            |                |                |
|      | 6 6 6 6 6                  |                |                |
+------+----------------------------+----------------+----------------+
| Test | 8                          | 5 7 11 3       | 1              |
| 4    |                            |                |                |
|      | 1 9 5 6 7 11 3 10          | 4              |                |
|      |                            |                |                |
|      |                            | 26             |                |
+------+----------------------------+----------------+----------------+
| Test | 9                          | 17 5 3 23      | 1              |
| 5    |                            |                |                |
|      | 20 17 9 5 6 3 23 12 9      | 4              |                |
|      |                            |                |                |
|      |                            | 48             |                |
+------+----------------------------+----------------+----------------+
| Test | 10                         | 5 5 3 5 11     | 1              |
| 6    |                            |                |                |
|      | 5 6 5 3 5 8 9 10 11 90     | 5              |                |
|      |                            |                |                |
|      |                            | 29             |                |
+------+----------------------------+----------------+----------------+
| **TỔ |                            |                | 6              |
| NG** |                            |                |                |
+------+----------------------------+----------------+----------------+

Program bai1;

Var i, m,k,s, x: longint;

f, f1: text;

function ngto(n: longint) : Boolean;

var i: longint;

begin

if n\<2 then ngto:= false else ngto:= true;

for i:=2 to trunc(sqrt(n)) do if n mod i=0 then

begin

ngto:=false;

break;

end;

end;

begin

assign(f, 'BAI1.TXT');

Reset (f); readln(f, m);

Assign (f1, 'BAI1_OUT.TXT');

Rewrite (f1);

S:=0;

K:=0;

For i:=1 to m do

Begin

Read (f, x);

If ngto(x) then

Begin

Write (f1, x);

S:=S+x;

K:=k+1;

End;

Writeln (f1, S);

Writeln (f1, k);

Close (f);

Close (f1);

End.
