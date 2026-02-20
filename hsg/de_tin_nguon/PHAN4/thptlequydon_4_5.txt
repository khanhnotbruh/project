Phạm mạnh Hùng -- thpt lê quý đôn

Bài 4: 10 điểm

# Từ N loại sơn ban đầu có số hiệu là 1, 2, \..., N (1≤N≤9), người ta có thể tạo ra rất nhiều loại sơn tổng hợp khác nhau bằng cách trộn lẫn một số loại sơn nào đó lại với nhau theo một liều lượng nào đó của mỗi loại. Khi tham gia trộn để được một loại sơn tổng hợp nào đó, các loại sơn khác nhau được đưa vào từ các vị trí khác nhau và liều lượng của mỗi loại sơn là bao nhiêu phụ thuộc vào thứ tự vị trí đưa vào của loại sơn đó. Liều lượng của mỗi loại sơn mà khác nhau trong khi trộn thì cho ra các loại sơn tổng hợp khác nhau. Hãy liệt kê ra tất cả các phương án trộn M loại sơn (M≤N) trong N loại sơn đã cho để có được các loại sơn tổng hợp.

Dữ liệu vào: Giá trị của các số N, M được đưa vào từ bàn phím.

Dữ liệu ra là tệp văn bản SON.OUT có cấu trúc: Mỗi dòng ghi số hiệu của
M loại sơn theo thứ tự khi đưa vào trộn để tạo ra một loại sơn tổng hợp
nào đó. Dòng cuối cùng ghi số lượng các loại sơn tổng hợp tạo ra.

Ví dụ:

+-----------------------------------+----------------------------------+
|                                   | Tệp son.out                      |
+===================================+==================================+
| 3 2                               | 1 2                              |
|                                   |                                  |
|                                   | 1 3                              |
|                                   |                                  |
|                                   | 2 1                              |
|                                   |                                  |
|                                   | 2 3                              |
|                                   |                                  |
|                                   | 3 1                              |
|                                   |                                  |
|                                   | 3 2                              |
|                                   |                                  |
|                                   | 6                                |
+-----------------------------------+----------------------------------+

program bai4;

uses crt;

var

f: text;

n,m: integer;

x: array\[1..9\] of integer;

dem: integer;

procedure PrintResult;

var i: integer;

begin

for i:=1 to m do write(f,x\[i\]);

writeln(f);

inc(dem);

end;

procedure Try(i:integer);

var j,k: integer;

check: boolean;

begin

for j:=1 to n do

begin

check:=true;

for k:=i-1 downto 1 do

if x\[k\]=j then check:=false;

if check then

begin

x\[i\]:=j;

if i=m then PrintResult

else try(i+1);

end;

end;

end;

BEGIN

assign(f1,\'SON.INP\');

reset(f1);

assign(f2,\'SON.OUT\');

rewrite(f2);

readln(f1,n,m);

try(1);

write(f2,dem);

close(f2);

END.
