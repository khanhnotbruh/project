NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**BÀI 3:** Số lượng sỏi nhỏ nhất (8 đ)

An được Bình thách đố một trò chơi đó là: Bình xếp 1 dãy sỏi gồm các
viên được đánh số (giá trị số \<10000). Bình yêu cầu An tìm độ dài nhỏ
nhất của dãy sỏi con sao cho tổng các giá trị đánh trên các viên sỏi
liên tiếp của dãy \>=K.

***Dữ liệu vào:*** Dòng đầu: Hai giá trị N (10\<N\<20000), và K S\<100
000 000).

Dòng 2 chứa các giá trị số được đánh trên viên sỏi: a1,a2, \....,a~N~.

***Dữ liệu ra:*** Ghi vào file văn bản daycon.out giá trị độ dài dãy con
tìm được. Nếu không tìm được thì ghi 0.

***Ví dụ:***

+--------------------------------------+-------------------------------+
| daycon.inp                           | daycon.out                    |
+======================================+===============================+
| 10 15                                | 2                             |
|                                      |                               |
| 5 1 3 5 10 7 4 9 2 8                 |                               |
+--------------------------------------+-------------------------------+

**DAPAN**

VAR f1,f2: text;

S,T: qword;

n,i,j,min,d: longint;

A: array\[1..20000\] of longint;

BEGIN

assign(f1,\'daycon.inp\');reset(f1);

assign(f2,\'daycon.out\');rewrite(f2);

readln(f1,N,S);

for i:= 1 to n do read(f1,A\[i\]);

d:=0; min:=-1 ;

for i:= 1 to n do

begin

d:= 0;

T:= A\[i\];

if T\>=S then

begin

d:=1;

if min=-1 then min:= d

else

if min\>=d then min:= d;

end

else

for j:= i+1 to n do

begin

T:= T + A\[j\];

if T \>= S then

begin

d:= j-i+1;

if min=-1 then min:= d

else

if min\>=d then min:= d;

break;

end;

end;

end;

if min=-1 then min:=0;

writeln(f2,min);

close(f1);

close(f2);

END.
