Nguyễn Đức Hải -- THPT Quang Trung

CÂU HỎI

Một số nguyên gọi là palindrom nếu nó đọc từ trái sang cũng bằng đọc từ
phải sang. Ví dụ 121 là một số palindrom. Nhập một dãy n phần tử nguyên
dương từ bàn phím, 5\<= n\<=20 và các phần tử có 2 đến 4 chữ số. In ra
các số là palindrom trong dãy.

+-----------------------------------+-----------------------------------+
| Palin.inp                         | Palin.out                         |
+===================================+===================================+
| 5                                 | 121                               |
|                                   |                                   |
| 121                               | 787                               |
|                                   |                                   |
| 234                               |                                   |
|                                   |                                   |
| 567                               |                                   |
|                                   |                                   |
| 787                               |                                   |
|                                   |                                   |
| 789                               |                                   |
+-----------------------------------+-----------------------------------+

ĐÁP ÁN

const fi=\'palin.inp\';

fo=\'palin.out\';

var n : integer;

a : array\[1..20\] of integer;

f1,f2:text;

procedure nhap;

var i : integer;

begin

readln(f1,n);

for i:=1 to n do readln(f1,a\[i\]);

end;

function palindrom(k : integer): boolean;

var x,y : string;

i : integer;

begin

str(k,x);

y := \'\';

for i := length(x) downto 1 do y := y + x\[i\];

if x=y then palindrom := true else palindrom := false;

end;

procedure palin;

var i : integer;

begin

for i := 1 to n do

if palindrom(a\[i\]) then writeln(f2,a\[i\]);

end;

BEGIN

assign(f1,fi); reset(f1);

assign(f2,fo); rewrite(f2);

nhap;

palin;

close(f1); close(f2);

END.
