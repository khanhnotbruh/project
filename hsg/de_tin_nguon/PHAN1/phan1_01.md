**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**BÀI 1**. **XÂU KÝ TỰ**

Bạn Hải Nam thường xuyên tham gia thi lập trình trên mạng, vì đạt được
thành tích nên Hải Nam được gửi tặng một phần mềm diệt virus. Nhà sản
xuất phần mềm cung cấp cho Hải Nam một mã số là số nguyên dương $n$ có
không quá 255 chữ số. Để cài đặt được phần mềm trên, Hải Nam phải nhập
vào mật khẩu của phần mềm. Mật khẩu là một số nguyên dương $m$ được tạo
ra bằng cách tính tổng giá trị các chữ số của $n.$

**Yêu cầu**: Bạn hãy giúp Bạn Hải Nam tìm số nguyên dương $m$?

**Dữ liệu** vào từ file văn bản **BAI1.INP** gồm một dòng duy nhất chứa
số nguyên dương $n$ ($n$ không quá 255 chữ số).

**Kết quả** ghi ra tệp văn bản **BAI1.OUT** một số nguyên duy nhất là số
nguyên dương $m$ tìm được.

**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**            **BAI1.OUT**      **Giải thích**
  ----------------------- ----------------- -----------------------------
  468                     18                $$m = 4 + 6 + 8$$

  -----------------------------------------------------------------------

**[ĐÁP ÁN]{.underline}**

**[BÀI 1:]{.underline}**

CONST

tfi = \'BAI1.INP\';

tfo = \'BAI1.OUT\';

VAR

res, i, n :longint;

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
