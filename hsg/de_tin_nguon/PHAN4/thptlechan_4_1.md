**ĐỖ THỊ LỤA -- THPT LÊ CHÂN**

CÂU HỎI: FIBONACI

Dãy fibonaci được định nghĩa như sau:

F1=1;

F2=1;

Fi=Fi-1+Fi-2 (i là số nguyên dương lớn hơn 2)

cho số nguyên dương n (n≤10^200^), hãy cho biết n là số fibonaci thứ
mấy?

-   Dữ liệu vào: tệp fibo.inp gồm một dòng duy nhất chứa số nguyên dương
    n

-   Dữ liệu ra: tệp bibo.out chứa một số nguyên duy nhất là vị trí của n
    trong dãy fibonaci, nếu n không thuộc dãy fibonaci thì ghi ra số
    fibonaci lớn hơn n và gần n nhất?

-   Ví dụ:

+-------------------------+------------------+-------------------------+
| Fibo.inp                | Fibo.out         | Giải thích              |
+=========================+==================+=========================+
| 8                       | 6                | Dãy fibonaci: 1 1 2 3 5 |
|                         |                  | 8 13 21...              |
|                         |                  |                         |
|                         |                  | Vậy số 8 là số thứ 6    |
|                         |                  | trong dãy.              |
+-------------------------+------------------+-------------------------+
| 18                      | 21               | Số 18 không nằm trong   |
|                         |                  | dãy nên số 21 trong dãy |
|                         |                  | là số lớn hơn 18 và gần |
|                         |                  | 18 nhất.                |
+-------------------------+------------------+-------------------------+

-   Sub1: 50% điểm tương ứng với n≤109

TRẢ LỜI

var fi, fo: text;

i: longint;

n: ansistring;

f:array\[1..2000\] of ansistring;

procedure modoc;

begin

assign(fi, \'fibo.inp\'); reset(fi);

assign(fo, \'fibo.out\'); rewrite(fo);

readln(fi, n);

close(fi);

end;

procedure canbang(var x,y: ansistring);

begin

while length(x)\<length(y) do x:=\'0\'+x;

while length(y)\<length(x) do y:=\'0\'+y;

end;

function cong(x,y: ansistring):ansistring;

var c,d,t,tem: byte;

i: longint;

res: ansistring;

begin

canbang(x,y);

res:=\'\'; tem:=0;

for i:=length(x) downto 1 do

begin

c:= ord(x\[i\])-48; d:=ord(y\[i\])-48; t:=c+d+ tem;

tem:= t div 10;

t:= t mod 10;

res:= chr(t+48)+res;

end;

if tem= 1 then res:= \'1\' + res;

exit(res);

end;

begin

modoc;

f\[1\]:=\'1\'; f\[2\]:=\'1\';

for i:=3 to 2000 do f\[i\]:=cong(f\[i-1\],f\[i-2\]);

for i:=2 to 2000 do

begin

canbang(n,f\[i\]);

if (n=f\[i\]) then

begin

writeln(fo,i);

break;

end

else if (n\<f\[i\]) then

begin

writeln(fo,f\[i\]);

break;

end;

end;

close(fo);

end.
