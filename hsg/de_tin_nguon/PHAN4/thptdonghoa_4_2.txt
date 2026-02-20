Trần Thị Thương -- THPT Đồng Hòa

CAUHOI

**Bài 4: Tỉa chuỗi**

Cho một chuỗi kí tự S (độ dài S ≤ 150 kí tự). Em hãy lập trình tỉa lại
chuỗi S bằng cách xóa các kí tự không nằm trong bảng chữ cái Latinh vẫn
giữ nguyên trật tự ban đầu của chúng. Biết rằng bảng chữ cái Latinh bao
gồm các kí tự từ A -- Z và a -- z.

-   Dữ liệu vào: Cho từ tệp văn bản có tên BAI1.INP gồm một dòng ghi xâu
    S (độ dài xâu không quá 250 ký tự).

-   Kết quả: Ghi ra tệp văn bản có tên BAI1.OUT gồm chuỗi sau khi đã tỉa

Dữ liệu vào: Nhập từ bàn phím giá trị chuỗi S

Kết quả: Xuất ra màn hình chuỗi sau khi đã tỉa

Ví dụ:

  -----------------------------------------------------------------------
  BAI1.INP                            BAI1.OUT
  ----------------------------------- -----------------------------------
  Tin\$%23h\]oc                       Tinhoc

  -----------------------------------------------------------------------

**ĐÁP ÁN**

+-----------+--------------------+--------------------+---------------+
| # Test    | # File dữ liệu vào | # File dữ liệu ra  | # Điểm        |
+===========+====================+====================+===============+
| # 1       | # Bai4_1.int       | # Bai4_1.out       | # 1,5 điểm    |
+-----------+--------------------+--------------------+---------------+
| # 2       | # Bai4_1.int       | # Bai4_1.out       | # 1 điểm      |
+-----------+--------------------+--------------------+---------------+
| # 3       | # Bai4_1.int       | # Bai4_1.out       | # 0.5 điểm    |
+-----------+--------------------+--------------------+---------------+

Program tiachuoi;

uses crt;

var A,B:string;

i,j,n:byte;

Begin

CLRSCR;

write(\'nhap xau A:\');

readln(A);

b:=0;

for i:=1 to length(A) do

if((A\[i\]) in \[\'a\'..\'z\' \]) or ((A\[i\])in \[\'A\'.. \'Z\'\]) then

b:=b+A\[i\];

Write(b) ;

readln

End.
