**Phạm Thị Thùy Dương -- THPT Quang Trung**

**CÂU HỎI**

Một số nguyên gọi là palindrom nếu nó đọc từ trái sang cũng bằng đọc từ
phải sang. Ví dụ 121 là một số palindrom. Nhập một dãy n phần tử nguyên
dương từ bàn phím, 5\<= n\<=20 và các phần tử có 2 đến 4 chữ số. In ra
các số là palindrom trong dãy.

DAPAN

uses crt;

var n : integer;

a : array\[1..20\] of integer;

{Thủ tục nhập dữ liệu}

procedure nhap;

var i : integer;

begin

clrscr;

repeat

write(\'n= \'); readln(n);

if (n\<=20) and (n\>=5) then break; {nếu đã thoả mãn thì thoát khỏi vòng
lặp}

writeln(\'Yeu cau 5\<=n\<=20. Nhap lai!\');

until false;

for i := 1 to n do

repeat

write(\'A\[\',i,\'\]=\'); readln(a\[i\]);

if (a\[i\]\<=9999) and (a\[i\]\>=10) then break; {a\[i\] có 2 đến 4 chữ
số}

writeln(\'Yeu cau cac phan tu co 2 den 4 chu so. Nhap lai!\');

until false;

end;

{Hàm kiểm tra bằng các kiểm tra xâu đối xứng}

function palindrom(k : integer): boolean;

var x,y : string;

i : integer;

begin

str(k,x); {chuyển k thành xâu x}

y := \'\';

for i := length(x) downto 1 do y := y + x\[i\];

{nếu x là đối xứng thì k là palindrom}

if x=y then palindrom := true else palindrom := false;

end;

{In kết quả:}

procedure palin;

var i : integer;

begin

writeln(\'Cac so la palindrom trong day:\');

for i := 1 to n do

if palindrom(a\[i\]) then writeln(a\[i\]);

readln;

end;

(\* Chương trình chính \*)

BEGIN

nhap;

palin;

END.
