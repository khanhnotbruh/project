VŨ NAM TUYÊN -- THPT LÊ QUÝ ĐÔN

***[Câu 4(10d):]{.underline}***

Nhân dịp ngày thành lập công ty, ban Giám đốc công ty X tổ chức cho cán
bộ công nhân viên một cuộc hội trại. Thời điểm tính trong ngày hội trại
là phút, thời điểm ban đầu là 0. Công ty có N cán bộ công nhân viên.
Người thứ I có mặt tại hội trại từ thời điểm a đến thời điểm bị. Hãy lập
trình giải quyết các công việc sau đây:

1\. Tìm cho ban Giám đốc một thời điểm sớm nhất đến thăm hội trại để gặp
được nhiều cán bộ nhất.

2\. Tìm một khoảng thời gian dài nhất tại địa điểm hội trại không có ai
cả, nếu có nhiều khoảng thời gian như thế hãy đưa ra khoảng thời gian
sớm nhất.

Dữ liệu vào: Từ file văn bản: CAU4.INP, có cấu trúc như sau: Dòng đầu
tiên ghi số N là số cán bộ của công ty (1\<N\<10000) .

Dòng thứ I trong N dòng tiếp theo ghi 2 số nguyên dương a, và bị là
khoảng thời gian

có mặt tại hội trại của cán bộ thứ I. Kết quả: Ghi ra file văn bản
CAU4.OUT như sau:

Dòng đầu tiên ghi số T là thời điểm ban Giám đốc đến thăm hội trại.

Dòng thứ 2 ghi 2 số nguyên a, b là khoảng thời gian từ a đến b không có
ai ở hội trại. Nếu không tìm được ghi số 32675 hai lần.

Cả hai file dữ liệu, các số trên một dòng cách nhau một ký tự trắng.

Ví dụ:

+------------------------------------+---------------------------------+
| CAU4.INP                           | CAU4.OUT                        |
+====================================+=================================+
| 7                                  | 623                             |
|                                    |                                 |
| 1 320                              | 321 350                         |
|                                    |                                 |
| 400 1000                           |                                 |
|                                    |                                 |
| 351 1200                           |                                 |
|                                    |                                 |
| 380 1336                           |                                 |
|                                    |                                 |
| 452 1430                           |                                 |
|                                    |                                 |
| 512 1230                           |                                 |
|                                    |                                 |
| 623 1105                           |                                 |
+------------------------------------+---------------------------------+

ĐÁP ÁN

program bai4;

type mang = array\[1..250,1..2\] of integer;

var

f1,f2,f: text;

n: integer;

i,j: integer;

a: mang;

max1,max2: integer;

dem,t: integer;

k,dau,cuoi,so: integer;

BEGIN

assign(f1, \'C:\\TUYENLQD\\CAU4.INP\');

reset(f1);

assign(f2, \'C:\\TUYENLQD\\CAU4.OUT\');

rewrite(f2);

assign(f, \'C:\\TUYENLQD\\CAU4.DAT\');

rewrite(f);

readln(f1,n);

for i:=1 to n do

readln(f1,a\[i,1\],a\[i,2\]);

max1:=a\[1,1\];

for i:=1 to n do

for j:=1 to 2 do

if a\[i,j\] \> max1

then max1:=a\[i,j\];

max2:=0;

for i:=1 to max1 do

begin

dem:=0;

for j:=1 to n do

if (a\[j,1\] \<= i) and (i \<= a\[j,2\])

then inc(dem);

if dem \> max2

then

begin

max2:=dem;

t:=i;

end;

end;

writeln(f2,t);

dem:=0;

for i:=1 to max1 do

begin

k:=0;

for j:=1 to n do

if (a\[j,1\] \> i) or (i \> a\[j,2\])

then inc(k);

if k = n

then

begin

inc(dem);

writeln(f,i);

end;

end;

reset(f);

if dem = 0

then write(f2,\'32675 32675\')

else

begin

readln(f,dau);

write(f2,dau);

for i:=2 to dem do

begin

readln(f,so);

cuoi:=so;

end;

write(f2,\' \',cuoi);

end;

close(f1); close(f2);

END.
