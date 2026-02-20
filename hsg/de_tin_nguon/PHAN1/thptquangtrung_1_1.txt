**Trần Thị Ngọc Ánh -- THPT Quang Trung**

**CÂU HỎI**

**KHUYẾN MẠI**

Bé Huy được phân công mua quà tặng cho cả lớp nhân dịp tết đầu năm. Sau
một thời gian suy nghĩ bé quyết định mua socola để cả lớp cùng liên hoan
vui vẻ. Số thanh socola cần mua là $n$. Trong cửa hàng, giá mua lẻ mỗi
thanh socola là $p$. Nhưng vì mua với số lượng nhiều nên bé Huy được
hưởng ưu đãi của cửa hàng. Cụ thể là cứ mua $k$ thanh socola thì được
tặng thêm một thanh.

**Yêu cầu**: Xác định số tiền tối thiểu mà bé Huy cần mang theo để tới
cửa hàng mua về ít nhất 𝑛 thanh socola.

**Dữ liệu vào**: nhập ba số nguyên dương $n,k,p\  \leq \ 10^{9}$ từ bàn
phím

**Kết quả ra**: số tiền bé Huy cần mang theo

**Ví dụ:**

  -----------------------------------------------------------------------
  **Vào**                           **Ra**
  --------------------------------- -------------------------------------
  36 5 5                            150

  -----------------------------------------------------------------------

DAPAN

Program khuyenmai;

Uses crt;

Var a,b,c,n,k,p:word;

Begin

clrscr;

Write(\'n,k,p=\'); Readln(n,k,p);

a:= n div (k+1);

b:= n mod (k+1);

c:=a\*k\*p+b\*p;

writeln(\' So tien toi thieu can tra la:\',c);

readln

end.
