**Phạm Thị Thu Hiền -- trường THPT Bạch Đằng**

CAUHOI

Nhập vào một xâu bất kỳ từ bàn phím. Hãy cho biết độ dài lớn nhất của
xâu con chứa liên tiếp kí tự \'t\'. In ra màn hình xâu con dài nhất vừa
tìm được.

Ví dụ: xâu nhập vào: ttgdtttthptbd

Độ dài max=4

Xâu con cần tìm là:t

DAPAN

Program XAUCON;

Uses crt;

Var s:string; i,max,t,k,d:byte;

Begin

clrscr;

Write(\'nhap xau\'); Readln(s);

k:=length(s);

max:=0;

t:=0;

for i:=1 to k do

begin

if s\[i\]= \'t\' then

begin

t:=t+1;

if t\>max then

begin

max:=t;

d:=i;

end;

end

else t:=0;

end;

if t\>max then max:=t;

for i:=d-max+1 to d do write(s\[i\]);

readln

END.
