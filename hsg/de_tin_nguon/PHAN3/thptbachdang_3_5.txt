**Phạm Thị Thu Hiền -- trường THPT Bạch Đằng**

**CAUHOI**

Cho một mảng số nguyên A gồm N phần tử.

**Yêu cầu:** Đếm số phần tử chẵn trong mảng A và in ra các phần tử đó
theo trật tự tuyệt đối giảm dần.

**Dữ liệu vào:** Cho trong tệp BAI3.INP

> \- Dòng 1: Ghi số nguyên dương N (2 \< N \< 10000);

\- Dòng 2: Các phần tử của mảng;

**Kết quả:** Ghi ra tệp BAI3.OUT

> \- Dòng 1: ghi số lượng các số chẵn tìm được;

\- Dòng 2: In ra các phần tử chẵn theo trật tự trị tuyệt đối giảm dần.

**Ví dụ:**

+-------------------------------------+--------------------------------+
| **BAI3.INP**                        | **BAI3.OUT**                   |
+=====================================+================================+
| 5                                   | 4                              |
|                                     |                                |
| -21 -20 50 10 -30                   | 50 -30 -20 10                  |
+-------------------------------------+--------------------------------+

**DAPAN**

Var

a: array\[1..200\] of integer;

i,j,n,tam,dem:integer;

f:text;

Begin

Assign(f,\'BAI3.inp\');

Reset(f);

Readln(f,n);

for i:=1 to n do

read(f,a\[i\]);

Close(f);

Assign(f,\'BAI3.Out\');

Rewrite(f);

For i:=1 to n- 1do

For J:=i+1 to n do

if abs(a\[i\])\<abs(a\[j\]) then

begin

tam:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=tam;

end;

dem:=0;

for i:=1 to n do

if a\[i\] mod 2 = 0 then dem:=dem+1;

for i:=1 to n do

if a\[i\] mod 2=0 then Writeln(f,a\[i\]:0);

close(f);

Write(\'Chuong trinh xu ly xong\');

Readln;

End.
