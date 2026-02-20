Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Dãy con đơn điệu tăng dài nhất (8 điểm)**

Cho dãy số nguyên A = a1, a2, \..., an. (n \< 10000, -10000 \< ai
\<10000). Một dãy con của A là một cách chọn ra trong A một số phần tử
giữ nguyên thứ tự. Như vậy A có 2n dãy con.

***Yêu cầu***: Tìm dãy con đơn điệu tăng của A có độ dài lớn nhất.

Ví dụ: A = (1, 2, 3, 4, 9, 10, 5, 6, 7, 8).

Dãy con đơn điệu tăng dài nhất là: (1, 2, 3, 4, 5, 6, 7, 8).

Dữ liệu (**Input**) vào từ file văn bản BAI3.INP

-   Dòng 1: Chứa số n

-   Dòng 2: Chứa n số a1, a2, \..., an cách nhau ít nhất một dấu cách

Kết quả (**Output**) ghi ra file văn bản BAI3.OUT

-   Dòng 1: Ghi độ dài dãy con tìm được

-   Các dòng tiếp: ghi dãy con tìm được và chỉ số những phần tử được
    chọn vào dãy con đó.

**TRALOI**

Program daycontangdainhat;

const fi=\'bai3.inp\';

fo=\'bai3.out\';

max=5000;

var

a,l,t:array\[0..max+1\] of integer;

n:word;

procedure nhap;

var i:word; f:text;

begin

assign(f,fi); reset(f);

readln(f,n);

for i:=1 to n do read(f,a\[i\]);

close(f);

end;

procedure xuly;

var i,j,jmax:word;

begin

a\[0\]:=-32768;

a\[n+1\]:=32767;

l\[n+1\]:=1;

for i:=n downto 0 do

begin

jmax:=n+1;

for j:=i+1 to n+1 do

if (a\[j\]\>a\[i\]) and (l\[j\]\>l\[jmax\]) then jmax:=j;

l\[i\]:=l\[jmax\]+1;

t\[i\]:=jmax;

end;

end;

procedure xuat;

var f:text; i:integer;

begin

assign(f,fo); rewrite(f);

writeln(f,l\[0\]-2); i:=t\[0\];

while i\<\>n+1 do

begin

writeln(f,\'a\[\',i,\'\]=\',a\[i\]); i:=t\[i\];

end; close(f);

end;

BEGIN

nhap; xuly; xuat;

END.
