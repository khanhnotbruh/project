Kiều Nguyệt Nga -- THPT Toàn Thắng

CAUHOI

**Câu 2:** $n \leq 10^{5}$ (3 điểm)

Một dãy dấu ngoặc hợp lệ là một dãy các kí tự "(" và ")" được định nghĩa
như sau:

\- Dãy rỗng (không có kí tự nào) là một dãy dấu ngoặc hợp lệ.

\- Nếu A là một dãy dấu ngoặc hợp lệ thì (A) là dãy dấu ngoặc hợp lệ.
Dấu ngoặc mở và dấu ngoặc đóng hai bên dãy A được gọi là tương ứng với
nhau.

\- Nếu A và B là hai dãy dấu ngoặc hợp lệ thì AB là dãy dấu ngoặc hợp
lệ.

Ví dụ: ((( )))(( ))( )( ) là dãy dấu ngoặc hợp lệ, các dấu mở ngoặc ở
các vị trí 1, 2, 3, 7, 8, 11, 13 tương ứng lần lượt với các dấu đóng
ngoặc ở các vị trí: 6, 5, 4, 10, 9, 12, 14.

Ban đầu có một dãy dấu ngoặc hợp lệ, người ta viết vào sau mỗi dấu ngoặc
mở một số là số dấu ngoặc (cả đóng và mở) nằm giữa trong dấu ngoặc mở đó
và dấu ngoặc đóng tương ứng:

( ( ( ) ) ) ( ( ) ) ( ) ( )

4 2 0 2 0 0 0

DAPAN

var f1,f2:text;

n,i,j,a,maxnt,somax,dem,so:longint;

arr,arr1:array\[1..100000\] of longint;

function nt(x:longint):boolean;

var t:longint;

begin

if x\<=1 then nt:=false

else

begin

if x\<4 then nt:=true

else

for t:=2 to trunc(sqrt(x)) do

if x mod t = 0 then

begin

nt:=false;

exit;

end;

nt:=true;

end;

end;

begin

assign(f1,\'PRIMEMAX.inp\');

assign(f2,\'PRIMEMAX.out\');

reset(f1);

readln(f1,n);

maxnt:=0;

somax:=0;

for i:=1 to n do

begin

read(f1,a); arr\[i\]:=a;

if a\>1 then

if nt(a) then if maxnt \< a then maxnt:=a;

end;

close(f1);

for i:=1 to n do

begin

dem:=0;

for j:=i to n do

if arr\[j\]=arr\[i\] then inc(dem);

if somax \< dem then

begin

somax:=dem;

so:=arr\[i\];

end;

end;

rewrite(f2);

writeln(f2,maxnt);

write(f2,so);

close(f2);

end.
