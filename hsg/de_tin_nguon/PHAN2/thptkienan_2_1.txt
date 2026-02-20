Nguyễn Đình Giáp -- THPT Kiến An

CAUHOI

**Bài 2:** (4.0 điểm) **Số hoàn thiện**

***Số hoàn thiện*** là một số có tổng các ước của nó (không kể chính nó)
bằng chính nó. Ví dụ: 6, 28 là các số hoàn thiện (vì 6 = 1 + 2 + 3; 28 =
1+ 2 + 4 + 7 + 14).

Cho dãy a gồm n phần tử nguyên dương (1\<=n\<=200). Viết chương trình
kiểm tra xem những phần tử nào trong dãy a là ***số hoàn thiện.***

**Dữ liệu**: Vào từ file văn bản **BAI2.INP** gồm:

\- Dòng đầu tiên chứa số nguyên n (1\<=n\<=200).

\- Dòng tiếp theo là n số nguyên dương a~1~, a~2~, ..., a~n~. *Mỗi số
được viết cách nhau ít nhất một dấu cách (1\<= a~i~\<=10^4^).*

**Kết quả**: Ghi ra file văn bản **BAI2.INP**: Lần lượt ghi các phần tử
là ***số hoàn thiện*** trong dãy a.

**Ví dụ:**

+---------------------------------------+------------------------------+
| **HOANTHIEN.INP**                     | **HOANTHIEN.OUT**            |
+=======================================+==============================+
| 5                                     | 6                            |
|                                       |                              |
| 11 22 6 31 28                         | 28                           |
+---------------------------------------+------------------------------+

**DAPAN**

Const

f1=\'hoanthien.inp\';

f2=\'hoanthien.out\';

var

a:array\[1..200\] of integer;

i,n:byte;

f:text;

procedure Nhap;

begin

assign(f,f1);

reset(f);

readln(f,n);

for i:=1 to n do

read(f,a\[i\]);

close(f);

end;

procedure Xuli;

var j,tong:integer;

begin

for i:=1 to n do

begin

tong:=0;

for j:=1 to a\[i\] div 2 do

if a\[i\] mod j=0 then tong:=tong+j;

if tong\<\>a\[i\] then a\[i\]:=0;

end;

end;

procedure Xuat;

begin

assign(f,f2);

rewrite(f);

for i:=1 to n do

if a\[i\]\<\>0 then writeln(f,a\[i\]);

close(f);

end;

Begin

> Nhap;
>
> Xuli;
>
> Xuat;

End.
