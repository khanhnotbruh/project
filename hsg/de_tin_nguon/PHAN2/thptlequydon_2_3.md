VŨ NAM TUYÊN -- THPT LÊ QUÝ ĐÔN

***[Câu 2 (6d):]{.underline}***

Cho dãy số nguyên dương, số lần xuất hiện của một số được gọi tần số của
số nguyên đó. Hãy tìm số nguyên dương có tần số cao nhất và tần số tương
ứng của nó. Dữ liệu vào: Cho từ file văn bản MAX.INP bao gồm:

Dòng đầu tiên chứa một số nguyên N( I\< N \< 10000) là số lượng các số
nguyên trong dãy. Mỗi dòng trong N dòng tiếp theo chứa số nguyên M( I\<
M \< 1000) trong dãy.

Kết quả: Ghi ra file văn bản MAX.OUT, gồm 2 số nguyên viết trên một
dòng, số thứ nhất ghi số nguyên có tần số cao nhất, số thứ 2 là tần số
của nó ( trong trường hợp có nhiều số nguyên có tần số cao nhất bằng
nhau, hãy đưa ra số nguyên nhỏ nhất và tần số của nó). Hai số cách nhau
một ký tự trắng.

Ví dụ:

+-------------+--------------+-----------+-------------+--------------+
| CAU2.INP    | CAU2.OUT     |           | CAU2.INP    | CAU2.OUT     |
+=============+==============+===========+=============+==============+
| 9           | 2 3          |           | 7           | 2 2          |
|             |              |           |             |              |
| 1           |              |           | 2           |              |
|             |              |           |             |              |
| 2           |              |           | 4           |              |
|             |              |           |             |              |
| 5           |              |           | 6           |              |
|             |              |           |             |              |
| 6           |              |           | 7           |              |
|             |              |           |             |              |
| 3           |              |           | 7           |              |
|             |              |           |             |              |
| 7           |              |           | 2           |              |
|             |              |           |             |              |
| 2           |              |           | 4           |              |
|             |              |           |             |              |
| 5           |              |           |             |              |
|             |              |           |             |              |
| 2           |              |           |             |              |
+-------------+--------------+-----------+-------------+--------------+

ĐÁP ÁN

program cau2;

var

f1,f2: text;

n: integer;

i,j: integer;

a: array\[1..250\] of integer;

b: array\[1..250,1..2\] of integer;

c: array\[1..250\] of integer;

dem,kt,tanso: integer;

max,min,m: integer;

BEGIN

assign(f1,\'C:\\TUYENLQD\\CAU2.INP\');

reset(f1);

assign(f2,\'C:\\TUYENLQD\\CAU2.OUT\');

rewrite(f2);

readln(f1,n);

dem:=0;

for i:=1 to n do

readln(f1,a\[i\]);

for i:=1 to n do

begin

kt:=0;

for j:=dem downto 1 do

if b\[j,1\] = a\[i\]

then inc(kt);

if kt = 0

then

begin

inc(dem);

b\[dem,1\]:=a\[i\];

tanso:=0;

for j:=1 to n do

if a\[j\] = b\[dem,1\]

then inc(tanso);

b\[dem,2\]:=tanso;

end;

end;

max:=b\[1,1\];

for i:=1 to dem do

if b\[i,2\] \> max

then max:=b\[i,2\];

m:=0;

for i:=1 to dem do

if b\[i,2\] = max

then

begin

inc(m);

c\[m\]:=b\[i,1\];

end;

min:=c\[1\];

for i:=1 to m do

if c\[i\] \< min

then min:=c\[i\];

write(f2,min,\' \',max);

close(f1); close(f2);

END.
