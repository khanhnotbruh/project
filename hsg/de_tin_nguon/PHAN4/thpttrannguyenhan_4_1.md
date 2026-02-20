Trình Thị Nga -- THPT Trần Nguyên Hãn

CAUHOI

**Bài 3.** **(10 điểm) Dãy con**

Cho dãy số gồm n số. Tìm dãy con liên tục có tổng lớn nhất.

**Dữ liệu:** Vào từ tệp văn bản BAI3.INP

\- Dòng đầu tiên ghi giá trị của N (số lượng các phần tử trong mảng A).

\- N dòng tiếp theo ghi lần lượt giá trị các phần tử của dãy A; (Ai có
kiểu integer).

**Kết quả**: Ghi ra tệp văn bản BAI3.OUT

Vị trí bắt đầu và độ dài dãy con.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **BAI3.INP**                      | **BAI3.OUT**                      |
+-----------------------------------+-----------------------------------+
| 6                                 | 3                                 |
|                                   |                                   |
| 1                                 | 3                                 |
|                                   |                                   |
| -2                                |                                   |
|                                   |                                   |
| 1                                 |                                   |
|                                   |                                   |
| 2                                 |                                   |
|                                   |                                   |
| 3                                 |                                   |
|                                   |                                   |
| -1                                |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

+------------------------------------------------+---------------------+
| > *Ghi chú:* Bài được chấm qua 2 test, mỗi     |                     |
| > test đúng được 3 điểm:                       |                     |
+================================================+=====================+
| > 1 test có độ dài của mỗi phần tử không vượt  | > 4 điểm            |
| > quá 10^3^                                    |                     |
+------------------------------------------------+---------------------+
| > 1 test có độ dài của mỗi phần tử không vượt  | > 6 điểm            |
| > quá 10^5^                                    |                     |
+------------------------------------------------+---------------------+

Chương trình gợi ý

const

f1=\'bai3.inp\';

f2=\'bai3.out\';

var i,j,n,ldau, dai,Max: integer;

a:array\[1..150\] of integer;

f:text;

Function TONG(A:KM;m,l:byte):Integer;

Var Tam,i:integer;

Begin

Tam:=0;

For i:=m to m+l do Tam:=Tam + A\[i\];

TONG:=Tam;

End;

procedure nhap;

begin

assign(f,f1);

reset(f);

read(f,n);

for i:=1 to n do

read(f,a\[i\]);

close(f);

end;

procedure xuat;

begin

assign(f,f2);

rewrite(f);

writeln(f,ldau);

writeln(f,max);

close(f);

end;

procedure xuli;

begin

Max:=M\[1\];dai:=1;ldau:=1;

For i:= 1 to n do

For j:=0 to n-i+1 do

if TONG(M,i,j)\> Max then

Begin ldau:=i; Max:=Tong(M,i,j) ; dai:=j+1 End;

End;

Begin

Nhap ;

Xuli ;

Xuat ;

End.
