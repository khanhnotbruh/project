Phạm Văn Giang -- THPT Thủy Sơn

CAUHOI

Trong đại dịch covid 19 vừa qua, để giúp đỡ các tỉnh gặp khó khăn trong
cả nước. Giám đốc 1 công ty sản xuất khẩu trang quyết định hỗ trợ khẩu
trang cho tất cả các các tỉnh gặp khó khăn. Ông là 1 người rất thích số
học, ông giao cho quản lí lập danh sách các tỉnh và số tuổi của mỗi
người dân trong tỉnh. Lượng khẩu trang phát cho mỗi tỉnh bằng tổng các
ước số của tổng số tuổi của tất cả người dân trong tỉnh. Bạn hãy giúp
người quản lí xác định số lượng khẩu trang cần dùng.

**Dữ liệu:** Vào từ file văn bản **BAI2.INP:**

**-** Dòng 1 gồm 1 số N là số lượng tỉnh cần hỗ trợ (1≤N≤50)

\- Dòng 2 là số dân mỗi tỉnh, mỗi số cách nhau 1 dấu cách (không quá
2.000.000)

\- N dòng tiếp theo, mỗi dòng ghi tuổi của mỗi người dân trong tỉnh, mỗi
số cách nhau 1 dấu cách

**Kết quả:** Ghi vào file **BAI2.OUT** một số nguyên duy nhất là số
lượng khẩu trang cần dùng.

**Ví dụ:**

+---------------------------------+------------------------------------+
| **BAI2.INP**                    | **BAI2.OUT**                       |
+=================================+====================================+
| 3                               | 303                                |
|                                 |                                    |
| 4 5 6                           |                                    |
|                                 |                                    |
| 21 15 40 2                      |                                    |
|                                 |                                    |
| 5 6 7 10 4                      |                                    |
|                                 |                                    |
| 2 3 4 5 6 10                    |                                    |
+---------------------------------+------------------------------------+

**Ràng buộc:** 60% số điểm ứng với các test có tổng số tuổi mỗi tỉnh
không quá 10^8^

DAPAN

Var a:array\[1..50\] of longint;

b:array\[1..2000000\] of byte;

i,d,i1,sum,t,n:longint;

f1, f2:text;

function tong_uoc(m:longint):longint;

var j,s:longint;

begin

s:=1+m;

for j:=2 to trunc(sqrt(m)) do

if m mod j=0 then s:=s+j+m div j;

if m=sqr(trunc(sqrt(m))) then s:=s-trunc(sqrt(m));

tong_uoc:=s;

end;

Begin

Assign(f1,'BAI3.INP');reset(f1);

Assign(f2,'BAI3.OUT');rewrite(f2);

Readln(f1,n);

For i:=1 to n do read(f1,a\[i\]);

sum:=0;

For i:=1 to n do

Begin

T:=0;

For i1:=1 to a\[i\] do

Begin

Read(f1,b\[i1\]);

T:=t+b\[i1\];

End;

Sum:=sum+tong_uoc(t);

End;

Write(f2,sum);

Close(f1); Close(f2);

End.
