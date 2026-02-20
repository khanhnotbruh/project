**Nguyễn Đức Hải -- THPT Quang Trung**

**CÂU HỎI**

**Điền dấu**

Hãy điền các dấu + hoặc - sao cho biểu thức sau đúng:

-   Dữ liệu vào: 1 dòng duy chứa 2 số nguyên N và M (N\<=20)

-   Dữ liệu ra: điền các dấu -- hoặc cộng để 1 ? 2 ? 3 ? 4 \... ? N = M

Ví dụ:

1 - 2 + 3 + 4 - 5 + 6 = 7

+----------------------------------+-----------------------------------+
| DIENDAU.INP                      | DIENDAU.OUT                       |
+==================================+===================================+
| 6 7                              | 1-2+3+4-5+6=7                     |
|                                  |                                   |
|                                  | 1+2-3-4+5+6=7                     |
+----------------------------------+-----------------------------------+

ĐÁP ÁN

const fi = \'DIENDAU.INP\';

fo = \'DIENDAU.OUT\';

MAXN = 20;

var n, dem, s, m: integer;

a2: array \[1..MAXN\] of char;

dau: array \[0..1\] of integer = (-1, +1);

dau2: array \[0..1\] of char = (\'-\', \'+\');

f: text;

procedure Nhap;

begin

assign(f, fi); reset(f);

readln(f, n, m);

close(f);

end;

procedure Init;

begin

dem:= 0;

s:= 1;

end;

procedure InKQ;

var i: integer;

begin

if s \<\> m then exit;

inc(dem);

write(f, dem:3, \': 1 \');

for i:= 2 to n do

write(f, a2\[i\],\' \', i, \' \');

write(f, \'= \', m);

writeln(f);

end;

procedure Try2(i: integer); // Dien so vao o thu i

var j: integer;

begin

for j:= 0 to 1 do

begin

a2\[i\]:= dau2\[j\];

s:= s + dau\[j\]\*i;

if i = n then InKQ

else Try2(i+1);

s:= s - dau\[j\]\*i;

end;

end;

BEGIN

Nhap;

assign(f, fo); rewrite(f);

Init;

Try2(2);

close(f);

END.
