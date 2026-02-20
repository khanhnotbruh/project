Nguyễn Thị Mỵ -- THPT Kiến An

CAUHOI

**Bài 3**: **(5.0 đểm)** **Phân lớp**

Gọi S(x) là số ước của số nguyên dương x. Hai số nguyên dương x và y
được gọi là hai số cùng lớp k nếu S(x) = S(y) = k.

Ví dụ: S(6) = 4 vì 6 có bốn ước là 1, 2, 3 và 6.

S(8) = 4

S(7) = 2

S(13) = 2

Như vậy: 6 và 8 là hai số thuộc lớp 4; 7 và 13 là hai số thuộc lớp 2.

Cho n số nguyên a~1~, a~2~, ..., a~n~. Hãy cho biết:

a\) Các số đã cho được chia thành bao nhiêu lớp khác nhau.

b\) Số lượng phần tử trong mỗi lớp là bao nhiêu?

**Dữ liệu**: Vào từ file văn bản PHANLOP.INP gồm:

\- Dòng đầu tiên chứa số nguyên n (1\<=n\<=1000).

\- Dòng tiếp theo là là số nguyên dương a~1~, a~2~, ..., a~n~. *Có thể
viết trên nhiều dòng, mỗi số được viết cách nhau ít nhất một dấu cách
(1\<=a~i~\<=65530).*

**Kết quả**: Ghi ra file văn bản PHANLOP.OUT có:

\- Dòng đầu tiên chứa số lớp S tìm được.

\- Tiếp đến là S dòng, mỗi dòng chứa hai giá trị k và d *(trong đó k là
số ước của các số trong lớp, d là số phần tử có trong lớp k. Mỗi số viết
cách nhau ít nhất một dấu cách).*

**Ví dụ:**

+---------------------------------------+------------------------------+
| **PHANLOP.INP**                       | **PHANLOP.OUT**              |
+=======================================+==============================+
| 5                                     | 2                            |
|                                       |                              |
| 6 2 13                                | 2 3                          |
|                                       |                              |
| 7 8                                   | 4 2                          |
+---------------------------------------+------------------------------+

DAPAN

const

f1=\'phanlop.inp\';

f2=\'phanlop.out\';

var

a,b,c:array\[1..10000\] of word;

f:text;

n,i,j,t,dem,k:word;

procedure Nhap;

begin

assign(f,f1);

reset(f);

read(f,n);

for i:=1 to n do

read(f,a\[i\]);

end;

procedure Xuli;

begin

for i:=1 to n do

begin

b\[i\]:=2;

for j:=2 to a\[i\] div 2 do

if a\[i\] mod j=0 then inc(b\[i\]);

end;

i:=1;

repeat

c\[i\]:=1;

for j:=i+1 to n do

begin

if b\[i\]=b\[j\] then

begin

inc(c\[i\]);

n:=n-1;

for t:=j to n do

b\[t\]:=b\[t+1\];

end;

end;

i:=i+1;

until i\>n;

end;

procedure Xuat;

begin

assign(f,f2);

rewrite(f);

writeln(f,n);

for i:=n downto 1 do

writeln(f,b\[i\],\' \',c\[i\]);

close(f);

end;

begin

Nhap;

Xuli;

Xuat;

end.
