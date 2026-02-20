Kiều Nguyệt Nga -- THPT Toàn Thắng

CAUHOI

**Câu3: Cực tiểu:**

Cho một dãy số gồm N số nguyên a~1~, a~2~, .., a~N~. Người ta định nghĩa
một số a~i~ là cực tiểu địa phương nếu thỏa mãn a~i-1~\> a~i~\< a~i+1~
(a~1~ và a~N~ không được gọi là cực tiểu địa phương).Hãy tìm số lượng
cực tiểu địa phương của dãy số trên.

***Input***: Cho trong file văn bản BAI1.INP gồm:

\- Dòng 1 chứa duy nhất một số nguyên dương N
![](media/image1.png){width="1.6666666666666667in"
height="0.20833333333333334in"}(N ≤ 10^6^).

\- Dòng 2 chứa dãy số nguyên a~1~, a~2~,.., a~N~ (\|a~i­~\| ≤ 10^9^,
$\forall i \in \ \lbrack 1,N\rbrack$).

***Output:***Kết quả ghi ra file văn bản BAI1.OUT duy nhất một số là kết
quả của bài toán.

***Ví dụ*:**

+---------------------------------+------------------------------------+
| BAI1.INP                        | BAI1.OUT                           |
+=================================+====================================+
| 4                               | 1                                  |
|                                 |                                    |
| 2 3 2 3                         |                                    |
+---------------------------------+------------------------------------+

DAPAN

var f1,f2:text;

n,a,b,c,dem,i:longint;

begin

assign(f1,\'bai1.inp\');reset(f1);

assign(f2,\'bai1.out\');rewrite(f2);

readln(f1,n);

read(f1,a,b);

dem:=0;

for i:=3 to n do

begin

read(f1,c);

if (a\> b) and (b\<c) then inc(dem);

a:=b;

b:=c;

end;

Write(f2,dem);

close(f1);close(f2);

end.
