**Vũ Thị Hiền -- THPT Lê Quý Đôn**

**Bài 4: Đếm nhóm bạn trong Hội trại NHOMBAN.PAS**

Trong một Hội trại hè do Tỉnh Đoàn tổ chức, có N học sinh tham gia,
trong đó, có một số học sinh quen nhau. Một số học sinh được gọi là cùng
1 nhóm bạn, nếu bất kì một học sinh nào thuộc nhóm đều có quen ít nhất 1
học sinh khác trong cùng nhóm đó.

***Yêu cầu:*** Hãy đếm xem có bao nhiêu nhóm bạn trong N học sinh tham
gia Hội trại.

***Dữ liệu vào:*** Cho trong file văn bản NHOMBAN.INP, có cấu trúc như
sau:

*- Dòng 1:* Ghi số nguyên dương N, là số lượng học sinh tham gia Hội
trại.

> (1 ≤ N ≤ 100).

*- Trong N dòng tiếp theo:* Mỗi dòng ghi N số nguyên dương a\[i,j\] với
ý nghĩa:

a\[i,j\] = 1 nếu học sinh i quen học sinh j (với i ≠j).

a\[i,j\] = 0 nếu học sinh i không quen học sinh j (với i ≠j).

a\[i,i\] = 1 (học sinh i được xem là quen bản thân nó).

Các số trên cùng một dòng được ghi cách nhau ít nhất một dấu cách.

***Dữ liệu ra:*** Ghi ra file văn bản NHOMBAN.OUT, theo cấu trúc như
sau:

*- Dòng 1*: Ghi số nguyên dương K, là số lượng nhóm bạn tìm được trong N
học sinh tham gia Hội trại.

***Ví dụ:***

+----------------------------------+-----------------------------------+
| **NHOMBAN.INP**                  | **NHOMBAN.OUT**                   |
+----------------------------------+-----------------------------------+
| 5                                | 2                                 |
|                                  |                                   |
| 1 0 0 1 1                        |                                   |
|                                  |                                   |
| 0 1 1 0 0                        |                                   |
|                                  |                                   |
| 0 1 1 0 0                        |                                   |
|                                  |                                   |
| 1 0 0 1 1                        |                                   |
|                                  |                                   |
| 1 0 0 1 1                        |                                   |
+----------------------------------+-----------------------------------+

***Chú ý:***

**Bài 4: 10 điểm**

const fi=\'nhomban.inp\';

fo=\'nhomban.out\';

maxn=100;

type mhc=array\[1..maxn,1..maxn\] of byte;

mmc=array\[1..maxn\] of byte;

var a:mhc;

b:mmc;

n,stp:integer;

f:text;

Procedure doc;

var i,j:integer;

Begin

assign(f,fi);

reset(f);

readln(f,n);

for i:=1 to n do

begin

for j:=1 to n do read(f,a\[i,j\]);

readln(f);

end;

close(f);

End;

Procedure xl;

var i,j,k:integer;

Begin

for i:=1 to n do b\[i\]:=n+1;

stp:=0;

for k:=1 to n do

begin

if b\[k\]=n+1 then

begin

stp:=stp+1;

b\[k\]:=stp;

end;

for i:=1 to n do

begin

if b\[i\] = stp then

for j:=1 to n do

if (a\[i,j\]=1) and (b\[j\]=n+1) then b\[j\]:=stp;

end;

end;

end;

procedure xuatstp;

begin

assign(f,fo);

rewrite(f);

writeln(f,stp);

close(f);

end;

Begin

doc; xl;

xuatstp;

End.
