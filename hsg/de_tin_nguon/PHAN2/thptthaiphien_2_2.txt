**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 2**. **XÂU KÝ TỰ**

Bạn Việt Anh thường xuyên tham gia thi lập trình trên mạng, vì đạt được
thành tích nên Việt Anh được gửi tặng một phần mềm diệt virus. Nhà sản
xuất phần mềm cung cấp cho Việt Anh một mã số là số nguyên dương $n$ có
không quá 255 chữ số. Để cài đặt được phần mềm trên, Việt Anh phải nhập
vào mật khẩu của phần mềm. Mật khẩu là một số nguyên dương $m$ được tạo
ra bằng cách tính tổng giá trị các chữ số của $n.$

**Yêu cầu**: Bạn hãy giúp Bạn Việt Anh tìm số nguyên dương $m$?

**Dữ liệu** vào từ file văn bản **BAI2.INP** gồm một dòng duy nhất chứa
số nguyên dương $n$ ($n$ không quá 255 chữ số).

**Kết quả** ghi ra tệp văn bản **BAI2.OUT** một số nguyên duy nhất là số
nguyên dương $m$ tìm được.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI2.INP**            **BAI2.OUT**      **Giải thích**
  ----------------------- ----------------- -----------------------------
  333                     9                 $$m = 3 + 3 + 3$$

  -----------------------------------------------------------------------

**[ĐÁP ÁN]{.underline}**

**[BÀI 2:]{.underline}**

CONST

tfi = \'BAI2.INP\';

tfo = \'BAI2.OUT\';

VAR

res, i, n :longint;s

BEGIN

assign(input,tfi); reset(input);

assign(output,tfo); rewrite(output);

res := 0;

read(n);

while n \<\> 0 do

begin

res := res + n mod 10;

n := n div 10;

end;

write(res);

close(input); close(output);

END.
