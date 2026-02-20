**Bài 1:**

Một kho hàng chứa n mặt hàng (0\<n\<=500000), mỗi mặt hàng được đánh một
mã số (không trùng nhau) từ 0 đến 10^9^. Mã số của các mặt hàng được lưu
trữ không tuần tự trong một file text. Qua một thời gian một số mặt hàng
được bán đi và khi một mặt hàng nào đó được bán thì chương trình máy
tính xóa đi mã số của mặt hàng đó trong file. Hiện tại, có một số mặt
hàng mới được nhập về, trước khi nhập vào kho mỗi mặt hàng đều được đánh
mã số và mã số đó không được trùng với mã số đã có trên tệp.

Hãy viết chương trình tìm một mã số nhỏ nhất không có mặt trong tệp để
đánh mã số cho mặt hàng khi được nhập vào kho.

**Dữ liệu vào:** Tệp văn bản Bai1.inp chứa các mã số của các mặt hàng ,
trong đó có một số mặt hàng đã bị xóa do đã bán. Các mã số cách nhau một
dấu cách.

**Dữ liệu ra:** Tệp văn bản Bai1.out chứa duy nhất một mã số nhỏ nhất
tìm được thỏa mãn yêu cầu bài toán.

**Ví dụ:**

  -----------------------------------------------------------------------
  **Bài1.inp**                                  **Bai1.out**
  --------------------------------------------- -------------------------
  0 8 10 3 2 1                                  4

  -----------------------------------------------------------------------

var f1,f2:text;

i,a,max,min:longint;

ma:array\[0..1000000000\] of boolean;

begin

assign(f1,\'bai1.inp\');

assign(f2,\'bai1.out\');

reset(f1); rewrite(f2);

min:=high(longint);max:=-1;

while not eof(f1) do

begin

read(f1,a);

if a\>max then max:=a;

if a\<min then min:=a;

ma\[a\]:=true;

end;

for i:=min to max do if ma\[i\]=false then

begin

write(f2,i);

break;

end;

close(f2);

end.
