Nguyễn Đình Giáp -- THPT Kiến An

CAUHOI

**Bài 4: Phép cộng kỳ quặc** (7.0 điểm)

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

**Yêu cầu**: Cho hai số a và b, hãy tính tổng đồng dạng của chúng.

**Dữ liệu**: Vào tệp từ tệp văn bản BAI3.INP :

\- Dòng thứ nhất là số a.

\- Dòng thứ hai là số b.

Số chữ số của a và b không quá 50.

**Kết quả**: Ghi ra tệp văn bản BAI3.OUT tổng đồng dạng của a và b.

**Ví dụ**:

+-----------------------------------+-----------------------------------+
| **BAI3.INP**                      | **BAI3.OUT**                      |
+===================================+===================================+
| 6334                              | 7761                              |
|                                   |                                   |
| 374                               |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

Program bai3;

Const

f1=\'bai3.inp\';

f2=\'bai3.out\';

var

a,b:string;

f:text;

s:string;

procedure nhap;

begin

assign(f,f1);

reset(f);

readln(f,a);

read(f,b);

close(f);

end;

function sapxep(x:string):string;

var i,j:byte;

k:char;

begin

for i:=1 to length(x)-1 do

for j:=i+1 to length(x) do

if x\[i\]\<x\[j\] then

begin

k:=x\[i\];

x\[i\]:=x\[j\];

x\[j\]:=k;

end;

sapxep:=x;

end;

procedure xuli;

var tong:real;

m,n:real;

code,code1:integer;

begin

val(sapxep(a),n,code);

val(sapxep(b),m,code);

tong:=n+m;

str(trunc(tong),s);

end;

procedure xuat;

begin

assign(f,f2);

rewrite(f);

write(f,sapxep(s));

close(f);

end;

Begin

nhap;

xuli;

xuat

End.
