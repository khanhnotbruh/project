Nguyễn Thị Duyên -- THPT Cộng Hiền

**CÂU HỎI**

**Bài 3. (8 điểm)**

Cho một dãy số nguyên gồm N phần tử *a*1​,*a*2​,...,*aN*​. Một dãy con đơn
điệu tăng của dãy trên là dãy *ai*1​​,*ai*2​​,...,*aik*​​ sao
cho:*i*1​\<*i*2​\<...\<*ik*​ và *ai*1​​\<*ai*2​​\<...\<*aik*​​. Hãy đưa ra dãy
con đơn điệu tăng của dãy đã cho có nhiều phần tử nhất.

**Dữ liệu vào**

-   Dòng đầu chứa số nguyên dương N;

-   Dòng thứ hai chứa N số nguyên dương *a*1​,*a*2​,...,*aN*​, mỗi số cách
    > nhau bởi một dấu cách.

**Giới hạn:**

-   1 ≤ n ≤ 1000, -10^9^ ≤ ai ≤ 10^9^

**Dữ liệu ra**

-   Ghi ra dãy con đơn điệu tăng dài nhất.

**Ví dụ**

+----------------------------------+-----------------------------------+
| **BAI3.INP**                     | **BAI3.OUT**                      |
+==================================+===================================+
| 6                                | 1 3 5 6                           |
|                                  |                                   |
| 1 10 3 5 2 6                     |                                   |
+----------------------------------+-----------------------------------+

**ĐÁP ÁN**

var a,b,c:array\[1..1000\] of int64;

i,j,k,n,m:int64;

fi,fo:text;

procedure docdl;

begin

assgin(fi,\'bai3.inp\'); reset(fi);

assign(fo,\'bai3.out\');rewrite(fo);

end;

begin

docdl;

readln(fi,n);

for i:=1 to n do read(a\[i\]);

n:=n+1;

a\[n\]:=1000000001;

b\[1\]:=1;

for i:=2 to n do

begin

k:=0;

for j:=1 to i-1 do

if (a\[j\]\<a\[i\]) and (k\<b\[j\]) then k:=b\[j\];

b\[i\]:=k+1;

end;

m:=b\[n\]; j:=m;

c\[m\]:=a\[n\];

i:=n;

while i\>=1 do

if b\[n\]-1=b\[i\] then begin dec(j);c\[j\]:=a\[i\];n:=i; dec(i); end

else dec(i);

for i:=1 to m-1 do write(fo,c\[i\]:5);

close(fi); close(fo);

end.
