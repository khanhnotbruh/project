Nguyễn Thị Mỵ - THPT Kiến An

CAUHOI

**Bài 4:** (7.0 điểm)

Cho số nguyên dương X, khi đảo ngược trật tự các chữ số của X ta sẽ thu
được một số nguyên dương Y, Y được gọi là số đảo ngược của X.

VD: X=613 thì Y= 316

Số nguyên dương Y được gọi là số nguyên tố nếu nó chỉ có hai ước số là
một và chính nó, số 1 không phải là số nguyên tố.

Cho hai số nguyên dương P và Q ( 1\<=P\<=Q\<= 2 x 10^9^ : Q-P\<=10^5^)

*Yêu cầu:* Hãy tìm tất cả các số nguyên dương X nằm thỏa mãn P\<=X\<=Q
và số đảo ngược của số X là số nguyên tố

*Dữ liệu vào:* Cho trong tệp Timso.inp có cấu trúc như sau:

-   Dòng 1: Ghi hai số nguyên dương P,Q hai số được ghi cách nhau ít
    nhất một dấu cách.

*Dữ liệu ra:* Ghi ra tệp timso.out trên nhiều dòng, mỗi dòng ghi một số
nguyên X tìm được

VD:

+-----------------------------------+-----------------------------------+
| **Timso.inp**                     | **Timso.out**                     |
+===================================+===================================+
| 10 19                             | 11                                |
|                                   |                                   |
|                                   | 13                                |
|                                   |                                   |
|                                   | 14                                |
|                                   |                                   |
|                                   | 16                                |
|                                   |                                   |
|                                   | 17                                |
+-----------------------------------+-----------------------------------+

DAPAN

uses crt;

var

p, q, i, n: integer;

fi, fo: text;

function dao(a: integer): integer;

var

tam: integer;

begin

tam:= 0;

while (a \<\> 0) do

begin

tam:= tam \* 10 + a mod 10;

a:= a div 10;

end;

exit(tam);

end;

function nt(a: integer): boolean;

var

i: integer;

kq: boolean;

begin

if (a \<= 1) then exit(false);

if (a = 2) or (a = 3) then exit(true);

if (a \> 3) then

begin

if (a mod 2 = 0) then exit(false)

else

begin

kq:= true;

for i:= 3 to trunc(sqrt(a)) do

begin

if (a mod i = 0) then

begin

kq:= false;

break;

end;

end;

exit(kq);

end;

end;

end;

begin

clrscr;

assign(fi,\'timso.inp\');

assign(fo,\'timso.out\');

reset(fi);

rewrite(fo);

readln(fi, p);

readln(fi, q);

for i:= p to q do

begin

if (nt(dao(i))) then writeln(fo,i);

end;

close(fi);

close(fo);

end.
