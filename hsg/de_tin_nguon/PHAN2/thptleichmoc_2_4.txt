Hoàng Thị Hiền - THPT Lê Ích Mộc

CAUHOI

Tập hợp các chữ cái tiếng Anh bao gồm 26 chữ cái được đánh sô thứ tự từ
0 đến 25 như sau:\
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25

A B C D E F G H I J K L M N O P Q R S T U V W X Y Z\
\* Quy tắc mã hoá một ký tự như sau (lấy ví dụ ký tự X):\
- Tìm số thứ tự tương ứng của ký tự ta được 23\
- Tăng giá trị số này lên 5 ta được 28\
- Tìm số dư trong phép chia số này cho 26 ta được 2\
- Tra ngược bảng chữ cái ta thu được C.\
\* Theo quy tắc mã hoá ở bài trên hãy viết chương trình cho phép:\
- Nhập một xâu ký tự và in ra xâu ký tự đã được mã hóa\
- Nhập một xâu ký tự đã được mã hoá và in ra sâu ký tự đã được giải mã.\
\* Ví dụ khi chạy chương trình:\
Nhap xau ky tu:\
PEACE \
Xau ky tu tren duoc ma hoa la:\
UJFHJ\
Nhap xau ky tu can giai ma:\
FR \
Xau ky tu tren duoc giai ma la:\
AM

( chú ý:Nếu nhập kí tự thường thì thêm hàm upcase);

DAPAN

program mahoa;

var S:string;

tmp, i:byte;

k:byte;

BEGIN

write(\'nhap xau : \'); readln(s);

k:=length(S);

for i:=1 to k do

if s\[i\]\<\> \' \' then

begin

tmp:= ord(s\[i\])+5;

if tmp\>90 then tmp:=tmp-26;

s\[i\]:= char(tmp);

end;

writeln(\'xau moi la: \', s);

readln

END.
