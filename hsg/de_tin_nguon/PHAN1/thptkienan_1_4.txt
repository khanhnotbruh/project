Hoàng Tiến Long -- THPT Kiến An

CAUHOI

**Bài 1: (4.0)** **Chuỗi đối xứng**

Một chuỗi gọi là chuỗi đối xứng nếu nó có từ một kí tự trở lên và các kí
tự của chuỗi theo thứ tự từ trái sang phải hay từ phải sang trái đều
giống nhau. Ví dụ: 'A', 'TAT', là chuỗi đối xứng 'ABCDECD' là chuỗi
không đối xứng. Viết chương trình nhập vào chuỗi kí tự cho trước S, có
chiều dài n (1\<=n\<=20000). Chuỗi con của S là chuỗi có một hay nhiều
kí tự liên tiếp nhau trong S có độ dài nhỏ hơn hoặc bằng n. Cho biết
chiều dài chuỗi con đối xứng dài nhất của chuỗi S.

**Dữ liệu**: Vào từ tệp văn bản XAU.INP gồm:

\- Dòng đầu tiên ghi giá trị n.

\- Dòng thứ hai gồm n kí tự liên tiếp gồm các chữ cái in hoa thuộc các
chữ cái từ A đến Z.

**Kết quả**: Ghi ra tệp văn bản XAU.OUT:

\- Chỉ một số duy nhất là độ dài chuỗi con đối xứng dài nhất của xâu S.

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **XAU.INP**                       | **XAU.OUT**                       |
+===================================+===================================+
| 12                                | 7                                 |
|                                   |                                   |
| HAI**BEGIGEB**OH                  |                                   |
+-----------------------------------+-----------------------------------+

DAPAN

program baitap1;

const

f1=\'xau.inp\';

f2=\'xau.out\';

var s:string;

n,max:integer;

f:text;

procedure nhap;

begin

assign(f,f1);

reset(f);

readln(f,n);

readln(f,s);

close(f);

end;

procedure xuat;

begin

assign(f,f2);

rewrite(f);

write(f,max);

close(f);

end;

function doixung(s:string):boolean;

var i:integer;

dx:boolean;

begin

for i:=1 to length(s) do

begin

if s\[i\]\<\>s\[length(s)-i+1\] then

begin

dx:=FALSE;

break;

end

else dx:=TRUE;

end;

doixung:=dx;

end;

procedure xuli;

var i,j,k:integer;

st:string;

begin

for i:=1 to n do

for j:=2 to n do

begin

st:=\'\';

for k:=i to i+j-1 do

st:=st+s\[k\];

if doixung(st)=TRUE then

if length(st)\>max then

max:=length(st);

end;

writeln(max);

end;

begin

nhap;

xuli;

xuat;

end.
