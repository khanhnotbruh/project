NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**BÀI 1:** Danh bạ (6 đ)

Cho tệp **Danhba.inp,** dòng đầu tiên chứa tên một người (không quá 1000
kí tự), tiếp theo là văn bản gồm nhiều dòng (không quá 1000 dòng), mỗi
dòng gồm tên và số điện thoại tương ứng, viết cách nhau 1 dấu cách.

***Yêu cầu:*** Đọc tên của người đó và ghi vào tệp **danhba.out** số
điện thoại tương ứng. Nếu không tìm thấy tên, ghi 0.

***Ví dụ:***

+--------------------------------------+-------------------------------+
| danhba.inp                           | danhba.out                    |
+======================================+===============================+
| **Hung**                             | **1111111111**                |
|                                      |                               |
| An 12333444                          |                               |
|                                      |                               |
| binh 4456677                         |                               |
|                                      |                               |
| Ha 86567836587                       |                               |
|                                      |                               |
| **Hung 1111111111**                  |                               |
|                                      |                               |
| Lam 837657                           |                               |
+--------------------------------------+-------------------------------+

**DAPAN**

VAR f1,f2: text;

s,x,y,so: ansistring;

i: longint;

kt: boolean;

BEGIN

assign(f1,\'danhba.inp\');reset(f1);

assign(f2,\'danhba.out\');rewrite(f2);

readln(f1,S);

S:= upcase(S);

kt:= false;

while not eof(f1) do

begin

x:= \'\';y:=\'\';

i:= 1;

readln(f1,x);

x:= upcase(x);

y:= copy(x,1,length(s));

if y=S then

begin

so:= copy(x,pos(\' \',x)+1,length(x)-pos(\' \',x));

writeln(f2,so);

kt:= true;

break;

end;

end;

if kt= false then writeln(f2,\'0\');

close(f1);

close(f2);

End.
