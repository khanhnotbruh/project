LÊ ĐÌNH LONG -- THPT THÁI PHIÊN

CÂU HỎI

**[Bài 3:]{.underline}** **TIN NHẮN BÌNH CHỌN**

Trong vòng chung kết cuộc thi "Vietnam Next Top Model" trên VTV3 các thí
sinh được đánh số báo danh là một số nguyên dương có giá trị không vượt
quá 1000. Khán giả xem truyền hình có thể bình chọn cho thí sinh mình
yêu thích bằng cách nhắn tin qua điện thoại di động.

Ban tổ chức nhận được tin nhắn hợp lệ của N khán giả (các khán giả được
đánh số từ 1 đến N), khán giả thứ **i** bình chọn cho thí sinh mang số
báo danh **a~i~**.

Hãy liệt kê số báo danh của những thí sinh được nhiều khán giả bình chọn
nhất theo thứ tự tăng dần.

*Dữ liệu:* Vào từ file văn bản BAI3.INP

-   Dòng đầu tiên ghi số nguyên dương N là số lượng khán giả có tin nhắn
    bình chọn hợp lệ (N≤10^6^)

-   N dòng tiếp theo, dòng thứ **i** ghi số nguyên dương **a~i~** là số
    báo danh của thí sinh mà khán giả thứ **i** bình chọn.

*Kết quả:* Ghi ra file văn bản BAI3.OUT

Danh sách các thí sinh được nhiều khán giả bình chọn nhất theo thứ tự số
báo danh tăng dần

*Ví dụ:*

+-----------------------------------+----------------------------------+
| **BAI3.INP**                      | **BAI3.OUT**                     |
+-----------------------------------+----------------------------------+
| 5                                 | 2                                |
|                                   |                                  |
| 3                                 | 3                                |
|                                   |                                  |
| 1                                 |                                  |
|                                   |                                  |
| 3                                 |                                  |
|                                   |                                  |
| 2                                 |                                  |
|                                   |                                  |
| 2                                 |                                  |
+-----------------------------------+----------------------------------+

[Ghi chú:]{.underline} Có ít nhất 50% số điểm của bài tương ứng với các
test có N≤1000.

**[ĐÁP ÁN]{.underline}**

**[Đáp án bài 3:]{.underline}**

program BAI3;

var d: array\[1..1000\] of longint;

n: longint;

i,u: longint;

max: longint;

fi, fo: text;

BEGIN

assign(fi,\'VNMODEL.INP\'); reset(fi);

assign(fo,\'VNMODEL.OUT\'); rewrite(fo);

read(fi,n);

for i:=1 to n do

begin

read(fi,u);

inc(d\[u\]);

end;

max:=d\[1\];

for i:=2 to 1000 do

if max\<d\[i\] then max:=d\[i\];

for i:=1 to 1000 do

if d\[i\]=max then writeln(fo,i);

close(fi); close(fo);

END.
