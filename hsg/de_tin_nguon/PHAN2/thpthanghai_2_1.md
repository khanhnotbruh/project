Đỗ Thu Thủy -- THPT Hàng Hải

CAUHOI (6 điểm)

Bạn Nam vừa được học về các số nguyên tố và bạn ấy rất thích vì những
tính chất đặc biệt của nó. Ngay cả trong giờ ra chơi, bạn Nam vẫn ở lại
lớp và lấy giấy ra để tìm thêm những số nguyên tố mới. Tuy nhiên, những
người bạn  tinh nghịch khi thấy Nam tìm ra được một số nguyên tố thì
thay đổi số đó bằng cách lấy viết ghi thêm vào sau số đó một hoặc nhiều
chữ số nữa, có lần cũng không viết thêm gì cả.

> -          Yêu cầu: Hãy cho biết những số nguyên tố nào có thể là số
> mà bạn Nam đã tìm được lúc đầu.
>
> -          Dữ liệu vào: Nhập từ bàn phím số nguyên dương
> n(20≤n≤2\*1000000000000) là số sau khi các bạn của Nam đã thay đổi.
>
> -          Kết quả ra:Xuất ra màn hình những số nguyên tố có thể là số
> mà bạn Nam tìm được lúc đầu.

DAPAN

Program SoNguyenTo;

Var n,i:Longint;

f1,f2: text;

Begin

assign(f1,\'DULIEU2.INP\');

reset(f1);

assign(f2,\'DULIEU2.OUT\');

rewrite(f2);

read(f1,n);

While n\>=2 do

Begin

i:=2;

While (i\<=sqrt(n)) and (n mod i\<\>0) do i:=i+1;

If i\>sqrt(n) then writeln(f2,n);

n:=n div 10;

End;

close(f1);

close(f2);

End.
