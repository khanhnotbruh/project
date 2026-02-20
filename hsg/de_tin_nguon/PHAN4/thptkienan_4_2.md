Nguyễn Trí Dũng -- THPT Kiến An

CAUHOI

**Bài 4: (7.0 điểm)**

Cho hai số nguyên dương M và N, M có p chữ số và N có q chữ số.

***Yêu cầu:*** Tính tổng của hai số M và N.

***Dữ liệu vào:*** Cho trong file văn bản TONG.INP có cấu trúc như sau:

*- Dòng 1:* Ghi số nguyên dương p là số lượng chữ số của M (1 ≤ p ≤
30000).

*- Dòng 2:* Ghi p chữ số của M theo thứ tự từ trái sang phải, các chữ số
được ghi cách nhau ít nhất một dấu cách.

*- Dòng 3:* Ghi số nguyên dương q là số lượng chữ số của N (1 ≤ q ≤
30000).

*- Dòng 4:* Ghi q chữ số của N theo thứ tự từ trái sang phải, các chữ số
được ghi cách nhau ít nhất một dấu cách.

***Dữ liệu ra:*** Ghi ra file văn bản TONG.OUT theo cấu trúc như sau:

*- Dòng 1:* Ghi số nguyên dương k là số lượng chữ số của tổng tìm được.

*- Dòng 2:* Ghi k chữ số của tổng tìm được theo thứ tự từ trái sang
phải, các chữ số được ghi cách nhau ít nhất một dấu cách.

***Ví dụ:***

+--------------------------------+-------------------------------------+
| TONG.INP                       | TONG.OUT                            |
+--------------------------------+-------------------------------------+
| 6                              | 6                                   |
|                                |                                     |
| 2 2 3 2 3 9                    | 2 2 3 4 8 6                         |
|                                |                                     |
| 3                              |                                     |
|                                |                                     |
| 2 4 7                          |                                     |
+--------------------------------+-------------------------------------+

DAPAN

Program Tinh_tong;

Const fi= \'TONG.INP\';

fo= \'TONG.OUT\';

MaxN=30000;

Type mmc=Array \[0..MaxN\] of byte;

Var N,M,Top:Longint;

A,B:mmc;C:\^mmc;

Procedure Read_Data;

Var f:text;i:Longint;

Begin

Assign(f,fi);

Reset(f);

Readln(f,N);

For i:=1 to N do

Read(f,A\[i\]);

Readln(f);

Readln(f,M);

New(C);

Fillchar(C\^,Sizeof(C\^),0);

For i:=1 to M do

Read(f,C\^\[i\]);

Close(f);

End;

Procedure Init;

Var Tg,k:Longint;

Begin

If M=N then Begin Top:=N;B:=C\^;Exit End;

If N \> M Then

Begin

Tg:=N-M;

For K:=M Downto 1 do

B\[K+Tg\]:=C\^\[K\];

Top:=N;

End

Else

Begin

Tg:=M-N;

For K:=N Downto 1 do

B\[K+Tg\]:=A\[K\];

A:=C\^;

Top:=M;

End;

Fillchar(C\^,Sizeof(C\^),0);

End;

Procedure Process;

Var i,Nguyen,Tg:Longint;

Begin

Nguyen:=0;

For i:= Top Downto 0 do

Begin

Tg:=(A\[i\]+B\[i\]+Nguyen);

C\^\[i\]:= Tg mod 10;

Nguyen:=Tg Div 10;

End;

End;

Procedure Write_Data;

Var f:text;i:Longint;

Begin

Assign(f,fo);

Rewrite(f);

if C\^\[0\]\>0 then

Begin

Writeln(f,Top+1);

Write(f,C\^\[0\],\' \');

End

Else

Writeln(f,Top);

For i:=1 to Top do

Write(f,C\^\[i\], \' \');

Close(f);

Dispose(C);

End;

BEGIN

Read_Data;

Init;

Process;

Write_Data;

END.
