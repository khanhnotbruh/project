Đỗ Thu Thủy -- THPT Hàng Hải

CAUHOI

Một xâu kí tự có thể \"nén\" theo cách sau: Một xâu con gồm n\>1 kí tự

giống nhau, chẳng hạn gồm n kí tự \"a\" sẽ đợc ghi thành na. Ví dụ xâu
\'aaaabbcd\'

sẽ đợc nén thành 4a2bcd. Hãy viết chơng trình nén và giải nén. (Chú ý
trong các

xâu đợc nén phải không có chữ số).

Dữ liệu vào: Cho trong tệp string.INP

Kết quả: Ghi vào tệp String.Out

+----------------------------------+-----------------------------------+
| **String.inp**                   | **String.out**                    |
+==================================+===================================+
| Aaaabbcd                         | 4a2bcd                            |
|                                  |                                   |
| 3a2b                             | aaabb                             |
+----------------------------------+-----------------------------------+

DAPAN (8 điểm)

Program nenvagiainen;

const fi=\'string.inp\';

fo=\'string.out\';

var f,g:text; s1,s2:string;

{================}

procedure doc;

begin

assign(f,fi); reset(f);

readln(f,s1);

readln(f,s2);

close(f);

end;

{================}

procedure nen;

var s,kq:string; i,d:integer; ch:char;

begin

d:=1; s1:=s1+#32;ch:=s1\[1\]; kq:=\'\';

for i:=2 to length(s1) do

if s1\[i\]=s1\[i-1\] then inc(d)

else

begin

str(d,s);

if d\<\>1 then kq:=kq+s+ch else kq:=kq+ch;

d:=1;

ch:=s1\[i\];

end;

writeln(g,kq);

end;

{================}

procedure giainen;

var s,kq,so:string; i,j,code,n:integer; ch:char;

begin

i:=1; kq:=\'\';

repeat

so:=\'0\';

while s2\[i\] in \[\'1\'..\'9\'\] do begin so:=so+s2\[i\];inc(i); end;

val(so,n,code);

if n\>1 then

for j:=1 to n do kq:=kq+s2\[i\]

else kq:=kq+s2\[i\];

inc(i);

until i\> length(s2);

writeln(g,kq);

end;

{================}

begin

assign(g,fo); rewrite(g);

doc;

nen;

giainen;

close(g);

end.
