Phạm mạnh Hùng -- thpt lê quý đôn

Bài 2: 6 điểm

Cho dãy số A gồm N số nguyên A~1~, A~2~, \..., A~N~. Dãy số
A~p~,\...,A~q~ với 1≤p,q≤N được gọi là dãy con của dãy số A. Tổng giá
trị các số trong một dãy con được gọi là trọng lượng của dãy con đó. Hãy
tìm dãy con có trọng lượng lớn nhất của dãy số A.

Dữ liệu vào là tệp văn bản dayso.inp có cấu trúc:

\- Dòng đầu tiên chứa số N (N≤255).

\- Dòng thứ hai chứa dãy số A, các số ghi cách nhau ít nhất là một ký tự
trống..

Dữ liệu ra là tệp văn bản dayso.out có cấu trúc như sau:

\- Dòng đầu tiên chứa hai số cách nhau ít nhất một ký tự trống là chỉ số
của số đầu và số cuối của dãy con tìm được.

\- Dòng thứ hai chứa trọng lượng của dãy con tìm được.

Ví dụ:

+-----------------------------------+----------------------------------+
| dayso.inp                         | dayso.out                        |
+===================================+==================================+
| 5                                 | 1 3                              |
|                                   |                                  |
| 3 -1 2 -2 1                       | 4                                |
+-----------------------------------+----------------------------------+

program bai2;

uses crt;

var

f1,f2: text;

n: integer;

s: string;

i,dem: integer;

BEGIN

clrscr;

assign(f1,\'ROBOT.INP\');

reset(f1);

assign(f2,\'ROBOT.OUT\');

rewrite(f2);

readln(f1,n);

read(f1,s);

if (n mod 2 \<\> 0)

or (length(s) mod 2 \<\> 0)

or (length(s) \> n\*2)

then write(f2,\'KHONG\')

else

begin

dem:=0;

for i:=1 to n div 2 do

if s\[i\] = s\[n+1-i\]

then inc(dem);

if dem = n div 2

then write(f2,\'CO\')

else write(f2,\'KHONG\');

end;

close(f1); close(f2);

readln

END.
