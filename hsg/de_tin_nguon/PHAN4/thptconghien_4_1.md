**Bài 4:** **cho dãy số tự nhiên {a~n~} đuợc xây dựng theo quy tắc
sau:**

\- Cho trước số a~0~ là một số tự nhiên có thể có nhiều chữ số.

\- Thiết lập số a~i~ (i\>0) là một số tự nhiên nhân được theo quy tắc:

\+ Nếu i lẻ Viết nối thêm vào số a~i-1~ bằng chính số a~i-1~

\+ Nếu i chẵn viết nối thêm vào a~i-1~ bằng số a~i-1~ theo chiều ngược
lại

Ví dụ:

A~0~=12 thì a~1~=1212, a~2~=12122121, a~3~=1212212112122121,...

Dữ liệu vào tệp văn bản bai3.inp

-Dòng đầu ghi số a~0~

-Dòng sau ghi số n

Kết quả ghi file văn bản bai3.out ghi duy nhất số a~n~

> Ví dụ:

+----------------------------------+-----------------------------------+
| **Bai4.inp**                     | **Bai4.out**                      |
+==================================+===================================+
| 528                              | 528528825825                      |
|                                  |                                   |
| 2                                |                                   |
+----------------------------------+-----------------------------------+

var f1,f2:text;

s0,s2,s1,s:string;

n,i:byte;

function mixStr(var s:string):string;

var i:byte;st:string;

begin

st:=\'\';

for i:=length(s) downto 1 do st:=st+s\[i\];

mixstr:=st;

end;

begin

assign(f1,\'bai4.inp\');

assign(f2,\'bai4.out\');

reset(f1);

readln(f1,s0);

read(f1,n);

close(f1); s:=s0;

rewrite(f2);

for i:=1 to n do if i mod 2 \<\> 0 then

begin

s:= s+s0;

s0:=s;

end

else

begin

s:=s+ mixstr(s0); s0:=s;

end;

writeln(f2,s2,s1);write(f2,s);

close(f2);

end.
