Nguyễn Ngọc Ký -- THPT Hùng Thắng CAUHOI

**Bài 3: Số nguyên tố đối xứng (*7 điểm*)**

Viết chương trình tìm các số nguyên tố đối xứng trong đoạn M và N.

***Biết rằng:***

\- Số nguyên tố là tập hợp những số tự nhiên chỉ chia hết cho 1 và chính
nó.

\- Số nguyên n gọi là số đối xứng nếu đọc từ trái qua phải, hay từ phải
qua trái đều được số giống nhau. Ví dụ: 9, 11, 77, 121, 101 là các số
đối xứng và 11, 101 là số nguyên tố đối xứng.

***Dữ liệu vào:*** Đọc dữ liệu từ tệp văn bản BAI3.INP có cấu trúc:

Dòng 1: Hai số nguyên dương N, M cách nhau bởi dấu cách.

Dòng 2: N phần tử của dãy a~i~ (1 ≤ i≤ N) cách nhau bởi dấu cách.

M dòng tiếp theo : Bộ hai số nguyên P,Q cách nhau bởi dấu cách.

***Dữ liệu ra:*** Ghi kết quả vào tệp văn bản BAI3.OUT gồm m dòng, mỗi
dòng một số nguyên là số các số nguyên tố đối xứng từ P đến Q.

Ràng buộc:

60% Số điểm có M,N ≤ 10^3^~,~ 0≤ a~i~ ≤10^8^, 0≤Q-P≤10^3^

20% Số điểm có M,N ≤ 10^4^~,~ 0≤ a~i~ ≤10^8^, 0≤ Q-P ≤10^4^

20% Số điểm có M,N ≤ 10^5^ ~,~ 0≤ a~i~ ≤10^8^, 0≤ Q-P ≤10^5^

(1≤N ≤ M≤10^5^, 0≤ a~i~ ≤10^9^, 1≤ i ≤N, 1≤P ≤ Q≤N)

***Ví dụ:***

+-------------------------------------------------+--------------------+
| BAI3.INP                                        | BAI3.OUT           |
+=================================================+====================+
| 10 6                                            | 2                  |
|                                                 |                    |
| 11 101 111 122 136 232 556 412 919 998          | 1                  |
|                                                 |                    |
| 1 3                                             | 1                  |
|                                                 |                    |
| 2 2                                             | 2                  |
|                                                 |                    |
| 2 3                                             | 0                  |
|                                                 |                    |
| 2 10                                            | 3                  |
|                                                 |                    |
| 4 8                                             |                    |
|                                                 |                    |
| 1 10                                            |                    |
+-------------------------------------------------+--------------------+

DAPAN

var

f1,f2:text;

a: array\[0..1000000\] of longint;

i,m,n,p,q,t,j:longint;

function dx(so:longint):boolean;

var k,l:byte;x:string;

begin

str(so,x);

l:=length(x);

for k:= 1 to l div 2 do

if x\[k\]\<\> x\[l+1-k\] then exit(false);

dx:=true;

end;

function nt (u: longint) : boolean;

var y:longint;

begin

if u\< 2 then exit(false) else if u\<4 then exit(true) else

for y:=2 to trunc(sqrt(u)) do

if u mod y = 0 then exit(false);

nt:=true;

end;

begin

assign(f1,\'bai3.inp\'); reset(f1);

assign(F2,\'bai3.out\'); rewrite(F2);

fillchar(a,sizeof(a),0);

readln(f1,n,m);

for i:=1 to n do

begin

read(f1,t);

if dx(t) and nt(t)

then a\[i\]:=a\[i-1\]+1 else a\[i\]:=a\[i-1\];

end;

readln(f1);

for i:=1 to m do

begin

readln(f1, p,q);

writeln(f2,a\[q\]-a\[p-1\])

end;

close(F1);

close(F2);

end.
