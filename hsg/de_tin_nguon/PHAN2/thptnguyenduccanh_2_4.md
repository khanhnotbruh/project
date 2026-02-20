PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Số nguyên dương M gọi là song tố khi M là số nguyên tố và tổng chữ số
của nó cũng là số nguyên tố. Cho một dãy gồm N số nguyên dương a1, a2,
... ,an. ( N không quá 1000, ai không quá 100.000 )

**Yêu cầu** : Đếm xem trong dãy có bao nhiêu số song tố.

**Dữ liệu** : Vào từ file văn bản BAI3.INP gồm có:

> \- Dòng đầu tiên chứa số nguyên dương N là số phần tử trong dãy.
>
> \- Dòng thứ 2 là chứa N số nguyên dương a1, a2, ..., an.

**Kết quả** : Ghi ra tệp văn bản BAI3.OUT :

> \- Ghi ra duy nhất số lượng số song tố.

**Ví dụ :**

+----------------------+-----------------------+----------------------+
| **BAI3.INP**         | **BAI3.OUT**          | **GIẢI THÍCH**       |
+======================+=======================+======================+
| 5                    | 1                     | Dãy có 1 số 11 là    |
|                      |                       | nguyên tố và tổng    |
| 12 11 17 16 13       |                       | các chữ số là 1+1=2  |
|                      |                       | cũng là nguyên tố.   |
+----------------------+-----------------------+----------------------+

DAPAN

**program bai4;**

var f1,f2:text;

n,i,d:word;

a:array \[1..10000\] of integer;

snt:array\[1..10000\] of boolean;

procedure sangngto;

var i,j:word;

begin

snt\[1\]:=true;

for i:=1 to trunc(sqrt(10000))do

if not snt\[i\] then

begin

j:=i\*i;

while j\<=10000 do

begin

snt\[j\]:=true;

j:=j+i;

end;

end;

end;

function tong(x:word):byte;

var s:byte;

begin

s:=0;

while x\<\>0 do

begin

s:=s+ x mod 10;

x:=x div 10;

end;

tong:=s;

end;

BEGIN

assign(f1,\'DE2_04.inp\');

reset(f1);

readln(f1,n);

assign(f2,\'DE2_04.out\');

rewrite(f2);

sangngto;

for i:=1 to n do

begin

read(f1,a\[i\]);

if not (snt\[a\[i\]\]) and not (snt\[tong(a\[i\])\]) then d:=d+1;

end;

write(f2,d);

close(f1);

close(f2);

END.
