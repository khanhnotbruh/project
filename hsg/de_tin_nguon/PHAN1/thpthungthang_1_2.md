Vũ Xuân Hưng -- THPT Hùng Thắng CAHOI

Bài 2 - Số nguyên tố (3.5 điểm)

Cho dãy số gồm có N số nguyên dương a~1~, a~2~,\..., a~N~ và một số
nguyên dương K.

*Yêu cầu:* Hãy cho biết số lượng các phần tử có giá trị nhỏ hơn K là số
nguyên tố của dãy số trên.

*Dữ liệu:* Vào từ File văn bản BAI2.INP gồm:

> \- Dòng đầu tiên là hai số N và K.
>
> \- Dòng tiếp theo lần lượt là N số nguyên của dãy số.

*Kết quả:* Ghi ra File BAI2.OUT gồm duy nhất số M là số lượng các phần
tử của dãy số thoả mãn yêu cầu đề bài.

*Giới hạn:* 0 \< N \< 50000; 0 \< K, a~i~ \< 5000 ∀i = 1..N;

*Ví dụ:*

+-----------------------------------+----------------------------------+
| BAI2.INP                          | BAI2.OUT                         |
+===================================+==================================+
| 7 8                               | 3                                |
|                                   |                                  |
| 1 2 3 8 7 6 11                    |                                  |
+-----------------------------------+----------------------------------+

DAPAN

program So_Nguyen_To;

uses crt;

var n,i: longint;

k: integer;

f1,f2: text;

A: array\[1..10000\] of integer;

function ngto(x: integer): boolean;

var i: integer;

begin

ngto:=false;

if x\<2 then exit;

for i:=2 to x div 2 do

if x mod i=0 then exit;

ngto:=true;

end;

procedure ktra;

var i,j: longint;

begin

if n\>10000 then begin

write(f2,\'CO LOI! NHAP LAI!\');

exit;

end;

if k\>5000 then begin

write(f2,\'CO LOI! NHAP LAI!\');

exit;

end;

for i:=1 to n do if A\[i\]\>5000 then begin

write(f2,\'CO LOI! NHAP LAI!\');

exit;

end;

j:=0;

for i:=1 to n do

if (A\[i\]\<k) and (ngto(A\[i\])=true) then j:=j+1;

if j\<\>0 then write(f2,j) else write(f2,\'KHONG CO\')

end;

Begin

clrscr;

assign(f1,\'D:\\BAI2.INP\');

reset(f1);

assign(f2,\'D:\\BAI2.OUT\');

rewrite(f2);

read(f1,n); write(n,\' \');

read(f1,k); write(k);

writeln;

for i:=1 to n do begin

read(f1,A\[i\]);

write(A\[i\],\' \');

end;

ktra;

close(f1);

close(f2);

readln

End.
