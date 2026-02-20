**Vũ Ngọc Hà -- THPT Trần Hưng Đạo**

**CAUHOI**

Trong dịp nghỉ hè các bạn học sinh lớp 12 dự định tổ chức dẫ ngoại đến
biển Sầm Sơn và sẽ đi bằng taxi. Các bạn được chia thành n nhóm, nhóm
thứ i gồm S~i~ bạn ($1 \leq S_{i} \leq 4)$ và mỗi chiếc taxi chỉ chở tối
đa 4 hành khách. Vậy lớp 12 cần thuê ít nhất bao nhiêu chiếc xe taxi để
chở các nhóm đi, với điều kiện là các bạn trong nhóm phải ngồi chung xe
taxi (một taxi có thể chở một nhóm trở lên)

***Dữ liệu vào:*** tệp văn bản BAI4.INP gồm:

\- Dòng đầu chứa số nguyên n ($1 \leq n \leq 10^{5})$ (số lượng các nhóm
học sinh)

\- Dòng thứ hai chứa dãy số nguyên S1, S2,\....Sn
($1 \leq S_{i} \leq 4)$. Các số nguyên cách nhau bởi dấu cách với Si là
số học sinh trong nhóm thứ i.

Dữ liệu ra: ghi ra tệp văn bản BAI4.OUT là 1 số nguyên duy nhất là số
lượng tối thiểu xe taxi cần thiết để chở tất cả học sinh đến nơi.

Ví dụ:

+-----------------------------------+-----------------------------------+
| BAI4.INT                          | BAI4.OUT                          |
+===================================+===================================+
| 5                                 | 4                                 |
|                                   |                                   |
| 1 2 4 3 3                         |                                   |
+-----------------------------------+-----------------------------------+

**DAPAN**

const

fi=\'bai4.inp\';

fo=\'bai4.out\';

var

f1,f2:text;

n,i:longint;

s:array\[1..1000000\] of integer;

procedure sort(l,r:longint);

var

i,j,x,y:longint;

begin

i:=l;

j:=r;

x:=s\[(i+j) div 2\];

repeat

while s\[i\]\<x do inc(i);

while x\<s\[j\] do dec(j);

if i\<=j then

begin

y:=s\[i\];

s\[i\]:=s\[j\];

s\[j\]:=y;

inc(i);

dec(j);

end;

until i\>j;

if l\<j then sort(l,j);

if i\<r then sort(i,r);

end;

procedure taxi;

var

d,c,i,dem:longint;

begin

sort(1,n);

d:=1;

c:=n;

while d\<c do

begin

if s\[d\]+s\[c\]\<=4 then

begin

s\[c\]:=s\[d\]+s\[c\];

s\[d\]:=0;

inc(d);

end

else dec(c);

end;

dem:=0;

for i:=1 to n do

if s\[i\]\<\>0 then inc(dem);

write(f2,dem);

end;

begin

assign(f1,fi);

reset(f1);

assign(f2,fo);

rewrite(f2);

readln(f1,n);

for i:=1 to n do read(f1,s\[i\]);

taxi;

close(f1);

close(f2);

end.
