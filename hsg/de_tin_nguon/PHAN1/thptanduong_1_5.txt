TRẦN THỊ HẰNG -THPT An Dương

> **CAUHOI**
>
> **CÂU 1. Tương đương (6đ)**

Hai từ gọi là tương đương nếu chúng được tạo nên bởi cùng một tập hợp kí
tự giống nhau: Ví dụ **S1='daabbbccccb'** và **S2='aabcccdcaaaaa'** là
tương đương vì nó cùng được tạo bởi tập ký tự **{'a','b','c', 'd' }**.
Cho ba cặp hai từ, với mỗi cặp in 'YES' nếu hai từ trong cặp là tương
đương và in 'NO' nếu chúng không phải là tương đương.

**Dữ liệu:** Nhập từ bàn phím 6 xâu ký tự lần lượt là S1, S2, S3, S4,
S5, S6; mỗi xâu trên một dòng chỉ gồm chữ cái tiếng Anh in thường có độ
dài không vượt quá 1000.

**Kết quả:** In ra ba dòng:

-   Dòng 1: In 'YES' nếu S1 và S2 là tương đương, ngược lại in 'NO'

-   Dòng 2: In 'YES' nếu S3 và S4 là tương đương, ngược lại in 'NO'

-   Dòng 3: In 'YES' nếu S5 và S6 là tương đương, ngược lại in 'NO'

**Ví dụ:**

+-----------------------------------------+----------------------------+
| **BAI1.INP**                            | **BAI1.OUT**               |
+=========================================+============================+
| aabbbccccbaabcc                         | YES                        |
|                                         |                            |
| ccaaaaab                                | NO                         |
|                                         |                            |
| aabbbccccbcc                            | YES                        |
|                                         |                            |
| aadddccccaaa                            |                            |
|                                         |                            |
| xyzabc                                  |                            |
|                                         |                            |
| aaaaxxyxxzcccb                          |                            |
+-----------------------------------------+----------------------------+

*Ghi chú:* Bài được chấm qua 10 test, mỗi test đúng được 0,3 điểm:

-   6 test có độ dài của mỗi xâu ký tự không vượt quá 255

-   4 test có độ dài của mỗi xâu ký tự không vượt quá 1000

**DAPAN**

var s1, s2: ansistring;

a, b: array\[\'a\'..\'z\'\] of longint;

f,g:text;

i, t: longint;

c: char;

function ok: boolean;

var l: char;

begin

for l:=\'a\' to \'z\' do if ((a\[l\]\<\>0) and (b\[l\]=0)) or
((a\[l\]=0) and (b\[l\]\<\>0)) then exit(false);

exit(true);

end;

BEGIN

assign(f,\'bai1.inp\');reset(f);

assign(g,\'bai1.out\');rewrite(g);

for t:=1 to 3 do

begin

readln(f,s1);

readln(f,s2);

for c:=\'a\' to \'z\' do

begin

a\[c\]:=0; b\[c\]:=0;

end;

for i:=1 to length(s1) do inc(a\[s1\[i\]\]);

for i:=1 to length(s2) do inc(b\[s2\[i\]\]);

if ok then writeln(g,\'YES\') else writeln(g,\'NO\');

end;

close(f);close(g);

END.
