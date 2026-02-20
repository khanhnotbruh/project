**LÊ ĐÌNH LONG --THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 3: Tìm số TIMSO.PAS**

Cho số nguyên dương X, khi đảo ngược trật tự các chữ số của X ta sẽ thu
được một số nguyên dương Y, Y được gọi là số đảo ngược của X.

Ví dụ: X = 613 thì Y = 316 là số đảo ngược của X.

Số nguyên dương Y được gọi là số nguyên tố nếu nó chỉ có hai ước số là 1
và chính nó, số 1 không phải là số nguyên tố.

Cho hai số nguyên dương P và Q (1 ≤ P ≤ Q ≤ 2×10^9^; Q - P ≤ 10^5^).

***Yêu cầu:*** Hãy tìm tất cả các số nguyên dương X nằm thỏa mãn P ≤ X ≤
Q và số đảo ngược của số X là số nguyên tố.

***Dữ liệu vào:*** Cho trong file văn bản TIMSO.INP có cấu trúc như sau:

*- Dòng 1:* Ghi hai số nguyên dương P Q, hai số được ghi cách nhau ít
nhất một dấu cách.

***Dữ liệu ra:*** Ghi ra file văn bản TIMSO.OUT trên nhiều dòng, mỗi
dòng ghi một số nguyên X tìm dược.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| TIMSO.INP                         | TIMSO.OUT                         |
+-----------------------------------+-----------------------------------+
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

**ĐÁP ÁN**

Program Tim_so;

Const fi=\'TIMSO.INP\';

fo=\'TIMSO.OUT\' ;

Var P,Q:longint;

Time:Longint;

Times:Longint absolute 0:\$46C;

Function NT(K:longint):Boolean;

Var Can,i:Longint;

Begin

If (K=2) or (K=3) then Begin NT:=True;Exit; End;

If (K\<2) or (K mod 2 = 0) or (K mod 3 = 0) then

Begin NT:=False; Exit; End;

NT:=True;

i:=5;

Can:=Trunc(sqrt(K));

While i\<=Can do

Begin

if (K mod i = 0) or (K mod (i+2) =0) then

Begin NT:=False; Exit; End

ELse inc(i,6);

End;

End;

Function lnso(N:longint):longint;

Var S:longint;

Begin

S:=0;

While N\<\>0 do

Begin

S:=S\*10+ (N mod 10);

N:=N div 10;

End;

lnso:=S;

End;

Procedure Read_Data;

Var F:text;

Begin

Assign(f,fi);

Reset(f);

Read(f,P,Q);

Close(f);

End;

Procedure Write_Data;

Var f:text;

j:longint;

Begin

Assign(f,fo);

Rewrite(f);

for j:=P to Q do

if NT(lnso(j)) then Writeln(f,j);

Close(f);

End;

BEGIN

Time:=Times;

Read_Data;

Write_Data;

Writeln((Times-Time)/18.2:0:2);

Readln;

END.
