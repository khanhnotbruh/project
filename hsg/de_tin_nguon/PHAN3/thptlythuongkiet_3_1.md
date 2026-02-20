Lê Hữu Huy-THPT Lý Thường Kiệt

**CAUHOI**

**Bài 3: *(8 điểm)* Phần thưởng**

Trong cuộc thi giải toán qua mạng internet mỗi học sinh đều có số điểm
tích lũy riêng của mình. Số điểm tích lũy của mỗi học sinh là một số
nguyên dương K (0 \< K ≤ 2×10^9^). Đội tuyển của Trường THTP Sáng Tạo có
N học sinh tham gia dự thi (2 ≤ N ≤ 100). Tại buổi gặp mặt trước kỳ thi
cấp tỉnh, thầy hiệu trưởng quyết định thưởng cho các học sinh trong đội
tuyển Q triệu đồng, biết rằng điểm tích lũy của mỗi học sinh đều chia
hết cho Q.

> ***Yêu cầu:*** Hãy tìm số nguyên dương Q lớn nhất.
>
> ***Dữ liệu vào:*** Cho trong file văn bản BAI3.INP có cấu trúc như
> sau:
>
> *- Dòng 1:* Ghi số nguyên dương N là số lượng học sinh.
>
> *- Dòng 2:* Ghi N số nguyên dương lần lượt là điểm tích lũy của N học
> sinh, các số được ghi cách nhau ít nhất một dấu cách.
>
> ***Dữ liệu ra:*** Ghi ra file văn bản BAI3.OUT Ghi số nguyên dương Q
> tìm được.
>
> ***Ví dụ:***

+-----------------------------------+----------------------------------+
| > BAI3.INP                        | > BAI3.OUT                       |
+-----------------------------------+----------------------------------+
| > 5                               | > 3                              |
| >                                 |                                  |
| > 15 24 45 36 27                  |                                  |
+-----------------------------------+----------------------------------+

**DAPAN**

Program Phan_thuong;

Const fi=\'BAI3.INP\';

fo=\'BAI3.OUT\';

Type mmc=Array\[0..101\] of Longint;

Var N:Longint;

A:mmc;

Function UCLN(x,y:Longint):Longint;

Var sodu:Word;

Begin

sodu:=x mod y;

While sodu\<\>0 do

Begin

x:=y;

y:=sodu;

sodu:=x mod y;

End;

UCLN:=y;

End;

Procedure Read_Data;1

Var f:text;

i:Longint;

Begin

Assign(f,fi);

Reset(f);

Readln(f,N);

For i:=1 to N do

Read(f,A\[i\]);

Close(f);

End;

Function USC:Longint;

Var f:text;

i,mUSC:longint;

Begin

mUSC:=UCLN(A\[1\],A\[2\]);

for i:= 3 to N do

mUSC:=UCLN(mUSC,A\[i\]);

USC:=mUSC;

End;

Procedure Write_Data;

Var f:Text;

Begin

Assign(f,fo);

Rewrite(f);

Write(f,USC);

Close(f);

End;

BEGIN

Read_Data;

Write_Data;

End.
