Nguyễn Trí Dũng -- THPT Kiến An

CAUHOI

**Bài 1: Sắp xếp xâu** (4,0 điểm)

Mỗi xâu kí tự St được lấy từ tập các ký tự 'a'\...'z', '0'\...'9' và có
độ dài tối đa là 255 kí tự. Cho N xâu kí tự St (0 \< N ≤ 200).

***Yêu cầu:*** Thực hiện sắp xếp N xâu kí tự St theo thứ thự không giảm
của số lượng các kí tự chữ số có trong mỗi xâu St.

***Dữ liệu vào:*** Cho trong file văn bản SAPXEP.INP có cấu trúc như
sau:

*- Dòng 1:* Ghi số nguyên N.

*- N dòng tiếp theo:* Mỗi dòng ghi một xâu St.

***Dữ liệu ra:*** Ghi ra file văn bản SAPXEP.OUT theo cấu trúc như sau:

\- Ghi N dòng: Mỗi dòng ghi một xâu St, các xâu được ghi theo thứ tự đã
sắp xếp.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| SAPXEP.INP                        | SAPXEP.OUT                        |
+===================================+===================================+
| 3                                 | cb1                               |
|                                   |                                   |
| abc1x2y3z                         | 1cd7hd                            |
|                                   |                                   |
| cb1                               | abc1x2y3z                         |
|                                   |                                   |
| 1cd7hd                            |                                   |
+-----------------------------------+-----------------------------------+

**ĐÁP ÁN**

Const fi=\'SAPXEP.inp\';

fo=\'SAPXEP.out\';

maxN=200;

Type Rec= record

St:string;

sl:Byte;

end;

ArrRec = Array\[0..MaxN\] of Rec;

Var A:ArrRec;

N:Longint;

ch:Char;

Procedure Swap(Var Rec1,Rec2:Rec);

Var RecTg:Rec;

Begin

RecTg:=Rec1;

Rec1:=Rec2;

Rec2:=RecTg;

End;

Procedure Read_Data;

Var f:Text; i,j,d:Longint;

Begin

Assign(f,fi); Reset(f);

Readln(f,N);

for i:=1 to N do

Begin

Readln(f,A\[i\].St);

d:=0;

For j:=1 to Length(A\[i\].St) do

if (\'0\' \<= A\[i\].St\[j\]) and (A\[i\].St\[j\]\<=\'9\') then

d:=d+1;

A\[i\].Sl:=d;

end;

Close(f);

End;

Procedure Sort;

Var i,j:Longint;

Begin

For i:= N Downto 2 do

For j:= 1 to i-1 do

if A\[j\].Sl \> A\[j+1\].Sl then Swap(A\[j\],A\[j+1\]);

end;

Procedure Write_Data;

Var f:text;

i:Longint;

Begin

Assign(f,fo); Rewrite(f);

For i:=1 to N do

Writeln(f,A\[i\].St);

Close(f);

End;

BEGIN

Read_Data;

Sort;

Write_Data;

End.
