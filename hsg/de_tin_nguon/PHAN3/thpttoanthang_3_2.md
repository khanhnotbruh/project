Phạm Hữu Huy -- THPT Toàn Thắng

CAUHOI

**Chữ số thứ N**

Khi viết các số tự nhiên tăng dần từ 1, 2, 3,... liên tiếp nhau, ta nhận
được một dãy các chữ số thập phân vô hạn, ví dụ:
1234567891011121314151617181920\...

Yêu cầu: Hãy tìm chữ số thứ N của dãy số vô hạn trên.

**Dữ liệu vào từ file** 'BAI3.inp' gồm một số dòng, mỗi dòng ghi một số
nguyên dương N

**Kết quả ra file** 'BAI3.out', với mỗi số N đọc được từ file
BAI3.INP.inp, ghi trên dòng tương ứng chữ số thứ N của dãy.

**Ví dụ:**

+-------------------------------------+--------------------------------+
| **BAI3.INP**                        | **BAI3.OUT**                   |
+=====================================+================================+
| 5                                   | 5                              |
|                                     |                                |
| 10                                  | 1                              |
|                                     |                                |
| 54                                  | 3                              |
+-------------------------------------+--------------------------------+

**Ràng buộc:**

-   *Có 60% test ứng 60% số điểm của bài với N ≤ 10^6^;*

-   *Có 20% test ứng 20% số điểm của bài với N ≤ 10^9^;*

-   *Có 20% test khác ứng với 20% số điểm còn lại của bài với N \<
    10^18^.*

DAPAN

program bai3;

var m,n:qword;

tong:qword;

st:ansistring;

i:longint;

f1,f2:text;

cs:array\[1..15\]of qword;

function tim(n:qword):longint;

var

k,mu,so:int64;

st:ansistring;

begin

k:=1; mu:=1;

while (k\<16)and(cs\[k\]\<n)do

begin

n:=n-cs\[k\];

inc(k); mu:=mu\*10;

end;

if mu =1 then so:=n div k

else so:=n div k + mu + ord(n mod k\>0)-1;

str(so,st);

st:=st\[k\]+st;

tim:=ord(st\[n mod k+1\])-48;

end;

begin

assign(f1,\'bai3.inp\'); assign(f2,\'bai3.out\');

reset(f1); rewrite(f2); m:=1;

for i:=1 to 15 do

begin

cs\[i\]:=9\*i\*m;

m:=m\*10;

end;

while not eof(f1) do

begin

readln(f1,n);

writeln(f2,tim(n));

end;

close(f1); close(f2);

end.
