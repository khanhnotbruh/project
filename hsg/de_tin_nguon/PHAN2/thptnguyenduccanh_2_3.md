PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Cho một dãy gồm N số nguyên dương a1, a2, ... ,an. ( N, ai không quá
1000 )

**Yêu cầu** : Đếm số đoạn con gồm các phần tử liên tiếp có tổng là số
hoàn thiện. Biết rằng số hoàn thiện là số mà tổng các ước của nó (không
kể chính nó) bằng chính nó.

**Dữ liệu** : Vào từ file văn bản BAI3.INP gồm có:

> \- Dòng đầu tiên chứa số nguyên dương N là số phần tử trong dãy.
>
> \- Dòng thứ 2 là chứa N số nguyên dương a1, a2, ..., an.

**Kết quả** : Ghi ra tệp văn bản BAI3.OUT :

> \- Ghi các đoạn con có tổng là số hoàn thiện (nếu có) trên từng dòng.
>
> \- Nếu không có ghi không có

**Ví dụ :**

+----------------------+-----------------------+----------------------+
| **BAI2.INP**         | **BAI2.OUT**          | **GIẢI THÍCH**       |
+======================+=======================+======================+
| 5                    | 1 5                   | Dãy có 3 đoạn con mà |
|                      |                       | có tổng là số hoàn   |
| 1 5 4 18 6           | 1 5 4 18              | thiện.               |
|                      |                       |                      |
|                      | 4 18 6                | Đoạn 1 : \[1 5\]     |
|                      |                       | tổng là 6,           |
|                      |                       |                      |
|                      |                       | Đoạn 2 : \[1 5 4     |
|                      |                       | 18\] tổng là 28,     |
|                      |                       |                      |
|                      |                       | Đoạn 3 : \[4 18 6\]  |
|                      |                       | tổng là 28.          |
+----------------------+-----------------------+----------------------+
| 5                    | Khong co              | Dãy số không có đoạn |
|                      |                       | con nào có tổng là   |
| 2 5 8 6 4            |                       | số hoàn thiện.       |
+----------------------+-----------------------+----------------------+

DAPAN

program bai3;

const fi=\'DE2_03.inp\';

fo=\'DE2_03.out\';

var a:array\[1..1000\] of integer;

T,n,j,i,dem,l:integer;

f1,f2:text;

function sht(x:integer):boolean;

var m,k:integer;

begin

m:=0; sht:=false;

for k:=1 to x div 2 do

if x mod k=0 then m:=m+k;

if m = x then sht:= true;

end;

BEGIN

assign(f1,fi); assign(f2,fo);

reset(f1); rewrite(f2);

readln(f1,n);

for i:=1 to n do read(f1,a\[i\]);

for i:=1 to n-1 do

begin

t:=a\[i\];

for j:= i+1 to n do

begin

t:=t+a\[j\];

if sht(t)=true then

begin

dem:=dem+1;

for l:= i to j do write(f2,a\[l\]:3); writeln(f2);

end;

end;

end;

if dem=0 then write(f2,\'khong co\');

close(f1); close(f2);

END.
