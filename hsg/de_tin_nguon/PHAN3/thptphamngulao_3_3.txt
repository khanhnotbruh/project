NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**BÀI 3: Phép cộng kỳ quặc** (8 điểm)

Với mỗi số nguyên dương a, ta gọi số đồng dạng với a là số nguyên dương
thu được từ a bằng cách sắp xếp theo thứ tự không tăng các chữ số trong
cách viết a dưới dạng hệ đếm thập phân.

Ví dụ: Nếu a = 6334 thì số đồng dạng với nó là 6433, còn nếu a = 374 thì
số đồng dạng với nó là 743.

Cho a và b là hai số nguyên dương. Ta gọi tổng đồng dạng của a và b là
số đồng dạng với tổng của số đồng dạng với a và số đồng dạng với b.

**Ví dụ**: Nếu a = 6334 và b = 374 thì tổng của số đồng dạng với a và số
đồng dạng với b là 6433 + 743 = 7176. Vì thế tổng đồng dạng của 6334 và
374 là 7761.

-   **Yêu cầu**: Cho hai số a và b, hãy tính tổng đồng dạng của chúng.

-   **Dữ liệu**: Vào tệp từ tệp văn bản BAI2.INP :

```{=html}
<!-- -->
```
-   Dòng thứ nhất là số a.

-   Dòng thứ hai là số b. Số chữ số của a và b không quá 50.

```{=html}
<!-- -->
```
-   **Kết quả**: Ghi ra tệp văn bản BAI2.OUT tổng đồng dạng của a và b.

**Ví dụ**:

+-----------------------------------+-----------------------------------+
| **PHEPCONG.INP**                  | **PHEPCONG.OUT**                  |
+===================================+===================================+
| 6334                              | 7761                              |
|                                   |                                   |
| 374                               |                                   |
+-----------------------------------+-----------------------------------+

**DAPAN:**

VAR f,g:text;

tong:byte;

i,n,m,j,d:integer;

n1,n2,z1,z2:byte;

a,b,c:string;

s:string;

tg:char;

BEGIN

assign(f,\'phepcong.inp\');

reset(f);

assign(g,\'phepcong.out\');

rewrite(g);

while not eof(f) do

begin

readln(f,a);

read(f,b);

end;

for i:=1 to length(a)-1 do

for j:=i+1 to length(a) do

if a\[i\]\<a\[j\] then

begin

tg:=a\[i\];

a\[i\]:=a\[j\];

a\[j\]:=tg;

end;

for i:=1 to length(b)-1 do

for j:=i+1 to length(b) do

if b\[i\]\<b\[j\] then

begin

tg:=b\[i\];

b\[i\]:=b\[j\];

b\[j\]:=tg;

end;

if length(a)\>length(b) then

for i:=1 to length(a)-length(b) do b:=\'0\'+b

else for i:=1 to length(b)-length(a) do a:=\'0\'+a;

c:=\'\'; d:=0;

i:=length(a);

j:=length(b);

repeat

val(a\[i\],n1,z1);

val(b\[j\],n2,z2);

tong:=n1+n2+d;

d:=tong div 10;

tong:=tong mod 10;

str(tong,s);

c:=s+c;

i:=i-1; j:=j-1;

until i=0;

if d=1 then c:=\'1\'+c;

write(g,c);

close(f);close(g);

END.
