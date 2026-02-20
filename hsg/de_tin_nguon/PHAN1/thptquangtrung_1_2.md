**Trần Thị Ngọc Ánh -- THPT Quang Trung**

**CÂU HỎI**

**CHU VI NHỎ NHẤT**

Bạn Hưng rất thích chơi một trò chơi với bộ sưu tập gồm 𝑛 viên đá của
mình:

Xếp 𝑛 viên đá lên một bảng hình chữ nhật chia thành lưới ô vuông đơn vị,
sao cho mỗi ô có không quá một viên đá.

**Ví dụ** với 𝑛 = 5, Hưng có thể xếp chúng vào bảng kích thước 1×5 (Hình
a), 2×3 (Hình b) hay 4×2 (Hình c)...

![](media/image1.png){width="2.59375in" height="1.03125in"}

**Yêu cầu:** Xác định kích thước của bảng có chu vi nhỏ nhất mà Hưng có
thể thực hiện được trò chơi.

**Dữ liệu vào:** nhập một số tự nhiên 𝑛 \< 231.

**Kết quả:** Ghi ra hai số cách nhau một dấu cách là độ dài hai cạnh của
bảng tìm được (số bé trước và số lớn sau).

  -------------------------------------------------------------------------
  **Vào**    **Ra**          **Vào**   **Ra**          **Vào**   **Ra**
  ---------- ----------- --- --------- ---------- ---- --------- ----------
  2          1 2             5         2 3             14        4 4

  -------------------------------------------------------------------------

**DAPAN**

Uses crt;

Var a,n:word;

Begin

clrscr;

Write(\'nhap so vien bi Hung co: \'); Readln(n);

a:= trunc(sqrt(n));

if ((a\*a)=n) then writeln(a,\' \',a)

else if (a\*a+1)\>=n then writeln (a,\' \',a+1)

else writeln(a+1,\' \', a+1);

readln

end.
