**Vũ Thị Hiền -- THPT Lê Quý Đôn**

**Bài 3: Sắp xếp xâu.**

Người ta định nghĩa: Từ là một nhóm ký tự đứng liền nhau.

Cho một xâu St gồm các ký tự lấy từ tập 'a' .. 'z' và dấu cách. Xâu
không quá 20 từ, mỗi từ dài không quá 10 ký tự.

***Yêu cầu:*** Sắp xếp các từ của xâu ký tự theo thứ tự không giảm của
độ dài các từ trong xâu St.

***Dữ liệu vào:*** Cho trong file văn bản SAPXAU.INP, có cấu trúc:

*- Dòng 1:* Ghi một xâu ký tự St (có ít nhất 1 từ).

***Dữ liệu ra:*** Ghi ra file văn bản SAPXAU.OUT, theo cấu trúc:

*- Dòng 1:* Ghi các từ của xâu ký tự sau khi được sắp xếp. Các từ được
ghi cách nhau đúng một dấu cách.

***Ví dụ:***

  --------------------------------------- -------------------------------
  **SAPXAU.INP**                          **SAPXAU.OUT**

  acb abcde abcd abc                      acb abc abcd abcde
  --------------------------------------- -------------------------------

**Bài 3: 8 điểm**

program sap;

const f1=\'sapxau.inp\';

f2=\'sapxau.out\';

type mm=array\[1..20\] of string;

var a:mm;

s,st,tg:string;

d:integer;

f:text;

procedure doc;

begin

assign(f,f1);

reset(f);

readln(f,s);

close(f);

end;

procedure xl;

var x,j,i:integer;

n:byte;

begin

n:=length(s);

while s\[1\]=\' \' do delete(s,1,1);

while s\[n\]=\' \' do delete(s,n,1);

x:=pos(\' \',s);

while x\>0 do

begin

delete(s,x,1);

x:=pos(\' \',s);

end;

s:=s+\' \';

for i:=1 to 20 do a\[i\]:=\'\';

i:=0;

while s\<\>\'\' do

begin

i:=i+1;

a\[i\]:=copy(s,1,pos(\' \',s)-1);

delete(s,1,pos(\' \',s));

end;

d:=i;

{ for j:=1 to d do

begin

i:=1;st:=\'\';

while (s\[i\]\<\>\' \')do

begin

st:=st+s\[i\];

i:=i+1;

end;

delete(s,1,i);

a\[j\]:=a\[j\]+st;

end;}

for i:=1 to d-1 do

for j:=i+1 to d do

if length(a\[i\])\>length(a\[j\]) then

begin

tg:=a\[i\];a\[i\]:=a\[j\];a\[j\]:=tg;

end;

end;

procedure xuat;

var i:integer;

begin

assign(f,f2);

rewrite(f);

for i:=1 to d do write(f,a\[i\],\' \');

close(f);

end;

begin

doc;xl;xuat;

end.
