TRẦN THỊ HẰNG \_ THPT An Dương

**CAUHOI**

**BÀI 4: Số bất biến** (10 điểm)

Khi ta xoay ngược trang giấy 180^0^ thì các số 1, 8, 0 không thay đổi;
số 6 thành số 9 và số 9 thành số 6. Các số còn lại trở nên vô nghĩa.

Các số mà khi xoay ngược tờ giấy 180^0^ không đổi thì gọi là số bất biến
ví dụ 69 khi ta xoay 180^0^ vẫn là 69.

Cho trước 1 số n hãy tìm tất cả các số bất biến có n chữ số
(1\<=n\<=15);

-   **Dữ liệu vào:** Vào từ tệp văn bản BATBIEN.INP: Ghi số n.

-   **Kết quả**: Ghi ra tệp văn bản BATBIEN.OUT: Ghi số lượng số bất
    biến và các số bất biến tìm được mỗi số 1 dòng.

**Ví dụ**:

+-----------------------------------+-----------------------------------+
| **BATBIEN.INP**                   | **BATBIEN.OUT**                   |
+===================================+===================================+
| 2                                 | 4 → có 4 số bất biến              |
|                                   |                                   |
|                                   | 11                                |
|                                   |                                   |
|                                   | 69                                |
|                                   |                                   |
|                                   | 88                                |
|                                   |                                   |
|                                   | 96                                |
+-----------------------------------+-----------------------------------+

**DAPAN**

const so: set of char =\[\'0\',\'1\',\'6\',\'8\',\'9\'\];

type mang=array\[1..1000000\] of string;

VAR f,g:text;

k:longint;

t,i,n,j,m,dvi,max,dem:longint;

sl:longint;

a,b,d:mang; s:string;

c,h:array\[1..10\] of char;

BEGIN

assign(f,\'batbien.inp\');

reset(f);

assign(g,\'batbien.out\');

rewrite(g);

read(f,n);

c\[1\]:=\'0\'; c\[2\]:=\'1\'; c\[3\]:=\'6\'; c\[4\]:=\'8\';
c\[5\]:=\'9\';

d\[1\]:=\'1\'; d\[2\]:=\'6\'; d\[3\]:=\'8\'; d\[4\]:=\'9\';

sl:=4;m:=5;dem:=3;

if n=1 then

begin

writeln(g,dem);

writeln(g,3);

writeln(g,\'0\');

writeln(g,\'1\');

writeln(g,\'8\');

end

ELSE

begin

for i:=1 to (n div 2)-1 do

begin

dem:=0;

for k:=1 to sl do

for dvi:=1 to m do

if c\[dvi\] in so then

begin

inc(dem);

a\[dem\]:=d\[k\]+c\[dvi\];

end;

for k:=1 to dem do d\[k\]:=a\[k\];

sl:=dem;

end;

for i:=1 to dem do

begin

max:=length(d\[i\]); s:=\'\';

for j:=max downto 1 do

if d\[i\]\[j\]=\'6\' then s:=s+\'9\'

else if d\[i\]\[j\]=\'9\' then s:=s+\'6\'

else

s:=s+d\[i\]\[j\];

b\[i\]:=s;

end;

if n mod 2= 0 then

begin

writeln(g,dem);

for i:=1 to dem do writeln(g,d\[i\]+b\[i\])

end

else

begin

h\[1\]:=\'0\';h\[2\]:=\'1\';h\[3\]:=\'8\';

writeln(g,dem\*3);

for i:=1 to dem do

for j:=1 to 3 do writeln(g,d\[i\]+h\[j\]+b\[i\]);

end;

end;

close(g); close(f);

END.
