**Lê Văn Quỳnh -- THPT Tiên Lãng**

**CAUHOI**

**Bài 1**. ***Đặt tên chương trình nguồn là BAI1.PAS***

Cho xâu X trong tệp bai1.inp. Yêu cầu: Ghi số lớn nhất trong xâu X vào
tệp bai1.out

Ví dụ

  -----------------------------------------------------------------------
  bai1.inp                            bai1.out
  ----------------------------------- -----------------------------------
  's31df54sd7 sdfu41 9dfHd1           54

  -----------------------------------------------------------------------

**DAPAN**

**Bài 1**

uses crt;

var x,s :String;

k,y,z,c:integer;

m,n:text;

begin

clrscr; assign(m,\'bai1.inp\') ;assign(n,\'bai1.out\');

reset(m);rewrite(n);

readln(m,s);

x:=\'\';z:=-1000;

for k:=1 to length(s) do

if (s\[k\] in \[\'0\'..\'9\'\]) then

x:=x+s\[k\]

else

if x\<\>\'\' then begin

val(x,y,c);

if y\> z then z:=y;

x:=\'\';

end;

writeln(n,z);

close(m);close(n);

readln

end.
