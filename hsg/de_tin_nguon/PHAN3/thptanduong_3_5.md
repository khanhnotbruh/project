TRẦN THỊ HẰNG \_ THPT An Dương

**CAUHOI**

**BÀI 3:** Dãy con (8 đ)

Cho một dãy số nguyên dương a1,a2, \....,a~N~. (10\<N\<20000), ai
\<=10000 với mọi i=1..N và một số nguyên dương S (S\<100 000 000).

***Yêu cầu:*** Tìm độ dài nhỏ nhất của dãy con chứa các phần tử liên
tiếp của dãy mà có tổng các phần tử lớn hơn hoặc bằng S.

***Dữ liệu vào:*** Đọc từ file văn bản daycon.inp chứa N và S ở dòng
đầu. Dòng 2 chứa các phần tử của dãy.

***Dữ liệu ra:*** Kết quả ghi vào file văn bản daycon.out giá trị độ dài
dãy con tìm được. Nếu không tìm được thì ghi 0.

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
