PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Cho một dãy gồm N số nguyên dương a1, a2, ... ,an. ( N không quá 1000,
ai không quá 100.000 )

**Yêu cầu** : Đếm số đoạn con gồm các phần tử liên tiếp có tổng là số
nguyên tố.

**Dữ liệu** : Vào từ file văn bản BAI3.INP gồm có:

> \- Dòng đầu tiên chứa số nguyên dương N là số phần tử trong dãy.
>
> \- Dòng thứ 2 là chứa N số nguyên dương a1, a2, ..., an.

**Kết quả** : Ghi ra tệp văn bản BAI3.OUT :

> \- Ghi các đoạn con có tổng là số nguyên tố (nếu có) trên từng dòng.
>
> \- Nếu không có ghi không có

**Ví dụ :**

+----------------------+-----------------------+----------------------+
| **BAI2.INP**         | **BAI2.OUT**          | **GIẢI THÍCH**       |
+======================+=======================+======================+
| 5                    | 2 5                   | Dãy số có 4 đoạn con |
|                      |                       | có tổng là số nguyên |
| 2 5 4 6 3            | 2 5 4                 | tố. Đoạn 1: \[2 5\]  |
|                      |                       | tổng 7,              |
|                      | 2 5 4 6               |                      |
|                      |                       | Đoạn 2: \[2 5 4\]    |
|                      | 4 6 3                 | tổng 11,             |
|                      |                       |                      |
|                      |                       | Đoạn 3 : \[2 5 4 6\] |
|                      |                       | tổng là 17,          |
|                      |                       |                      |
|                      |                       | Đoạn 4 : \[4 6 3\]   |
|                      |                       | tổng là 13           |
+----------------------+-----------------------+----------------------+
| 5                    | Khong co              | Dãy số không có đoạn |
|                      |                       | con nào có tổng là   |
| 2 4 8 6 4            |                       | số nguyên tố.        |
+----------------------+-----------------------+----------------------+

DAPAN

**program bai3;**

var a: array \[1..1000\]of integer;

i,j,k ,t,dem: integer; n:longint;

F1,F2 : TEXT;

function so_ngto(x:integer):boolean;

var u: integer;

begin

if x \> 1 then

begin

so_ngto:=false;

u:=2;

While (u\<=sqrt(x)) and (( x mod u ) \<\> 0) do u:=u+1;

if u\> sqrt (x) then so_ngto:=true;

end;

end;

BEGIN

assign (f1, 'DE1_03.INP\'); reset (f1);

assign (f2,\'DE1_03.out\'); rewrite (f2);

readln(f1,n);

for i:=1 to n do read(f1,a\[i\]);

for i:=1 to n-1 do

begin

t:=a\[i\];

for j:= i+1 to n do

begin

t:=t+a\[j\];

if so_ngto(t) = true then

begin

dem:=dem+1;

for k:= i to j do write (f2,a\[k\]);

writeln(f2);

end;

end;

end;

if dem = 0 then writeln(f2,\'khong co\');

close (f1); close (f2);

END.
