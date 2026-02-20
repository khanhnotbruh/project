Hoàng Tiến Long -- THPT Kiến An

CÂU HỎI

**Bài 4:** **(7.0 điểm) Dãy con chung dài nhất DAYCON.PAS**

# Cho dãy số nguyên A gồm N phần tử a~1~, a~2~, \..., a~N~ và dãy số nguyên B gồm M phần tử b~1~, b~2~, \..., b~M~. Các phần tử trong một dãy số có giá trị khác nhau từng đôi một.

#  (1 ≤ a~i~, b~j~ ≤ 2×10^9^; 1 ≤ N ≤ 100; 1 ≤ i ≤ N; 1 ≤ M ≤ 100; 1 ≤ j ≤ M).

# Dãy C được gọi là dãy con của dãy A nếu dãy C nhận được từ dãy A bằng cách xóa đi một số phần tử và giữ nguyên thứ tự của các phần tử còn lại. 

# Nếu dãy C là dãy con của dãy A và cũng là dãy con của dãy B thì dãy C được gọi là dãy con chung của hai dãy A và B.

# *Yêu cầu:* Hãy tìm dãy C là dãy con chung của hai dãy A và B sao cho số lượng phần tử của dãy C là lớn nhất.

# *Dữ liệu vào:* Cho trong file văn bản DAYCON.INP có cấu trúc như sau:

*- Dòng 1:* Ghi số nguyên dương N là số lượng phần tử của dãy A.

*- Dòng 2:* Ghi N số nguyên là giá trị của các phần tử trong dãy A, các
số được ghi cách nhau ít nhất một dấu cách.

*- Dòng 3:* Ghi số nguyên dương M là số lượng phần tử của dãy B.

# *- Dòng 4:* Ghi M số nguyên là giá trị của các phần tử trong dãy B, các số được ghi cách nhau ít nhất một dấu cách.

# *Dữ liệu ra:* Ghi ra file văn bản DAYCON.OUT theo cấu trúc như sau:

# *- Dòng 1:* Ghi số nguyên dương K là số lượng phần tử của dãy C.

# - *Dòng 2*: Ghi K số nguyên là giá trị của các phần tử trong dãy C, các số được ghi cách nhau một dấu cách.

# - *Dòng 3*: Ghi K số nguyên dương lần lượt là chỉ số của các phần tử trong dãy A tương ứng với các giá trị của phần tử đó trong dãy C, các số được ghi cách nhau một dấu cách.

# - *Dòng 4*: Ghi K số nguyên dương lần lượt là chỉ số của các phần tử trong dãy B tương ứng với các giá trị của phần tử đó trong dãy C, các số được ghi cách nhau một dấu cách.

# *Ví dụ:*

+-----------------------------------+----------------------------------+
| DAYCON.INP                        | DAYCON.OUT                       |
+-----------------------------------+----------------------------------+
| 6                                 | 4                                |
|                                   |                                  |
| 9 3 1 12 6 15                     | 3 12 6 15                        |
|                                   |                                  |
| 5                                 | 2 4 5 6                          |
|                                   |                                  |
| 3 12 7 6 15                       | 1 2 4 5                          |
+-----------------------------------+----------------------------------+

**ĐÁP ÁN**

Program Day_con;

Const fi=\'DAYCON.INP\';

fo=\'DAYCON.OUT\';

MaxN=101;

Type mmc=Array\[0..MaxN\] of Longint;

mhc=Array\[0..MaxN\] of mmc;

Var A,B,C:mmc;

L:mhc;

N,M,K:Longint;

Time:Longint;

Times: Longint absolute 0:\$46C;

Procedure Read_Data;

Var f:Text; i:Longint;

Begin

Assign(f,fi);

Reset(f);

Readln(f,N);

For i:=1 to N do

Read(f,A\[i\]);

Readln(f,M);

For i:=1 to M do

Read(f,B\[i\]);

Fillchar(L,Sizeof(L),0);

Close(f);

End;

Procedure Solution;

Var i,j:Longint;

Begin

For i:=1 to N do

For j:=1 to M do

Begin

if A\[i\] = B\[j\] then

L\[i,j\]:=L\[i-1,j-1\]+1

Else

Begin

L\[i,j\]:=L\[i,j-1\];

If L\[i-1,j\] \> L\[i,j-1\] then

L\[i,j\]:=L\[i-1,j\];

End;

End;

End;

Procedure Write_Data;

Var f:Text;i,j,Top:Longint;LA,LB:mmc;

Begin

Assign(f,fo);

Rewrite(f);

Writeln(f,L\[N,M\]);

Top:=0;

i:=N;j:=M;

While (i\>0) and (j\>0) do

Begin

if A\[i\] = B\[j\] then

Begin

inc(Top);

LA\[Top\]:=i;

LB\[Top\]:=j;

dec(i);

dec(j);

End

Else

if L\[i-1,j\] \> L\[i,j-1\] then

dec(i)

Else

dec(j);

End;

For i:=Top Downto 1 do

Write(f,A\[LA\[i\]\],\' \');

Writeln(f);

For i:=Top Downto 1 do

Write(f,LA\[i\],\' \');

Writeln(f);

For i:=Top Downto 1 do

Write(f,LB\[i\],\' \');

Close(f);

End;

BEGIN

Time:=Times;

Read_Data;

Solution;

Write_Data;

Writeln((Times-Time)/18.2:0:0);

Readln;

END.
