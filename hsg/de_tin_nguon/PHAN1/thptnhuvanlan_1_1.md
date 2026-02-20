Phạm Văn Toán -- THPT Nhữ Văn Lan

CAUHOI

**Bài 1**: **Xâu ký tự**

Cho hai xâu ký tự $S1$ và $S2$ gồm các ký tự chữ cái tiếng Anh (in
thường, in hoa) và ký tự dấu cách. Hai xâu ký được gọi là tương đương
nếu:

-   Độ dài hai xâu ký tự bằng nhau

-   Số lượng từng loại ký tự xuất hiện trong mỗi xâu (không phân biệt ký
    tự in thường và in hoa) là bằng nhau.

**Dữ liệu**: vào từ file văn bản **BAI1.INP:**

-   Dòng thứ nhất chứa xâu ký tự S1. Độ dài xâu ký tự S1 không quá
    $1000$ ký tự.

-   Dòng thứ hai chứa xâu ký tự S2. Độ dài xâu ký tự S2 không quá $1000$
    ký tự.

**Kết quả**: ghi ra tệp văn bản **BAI1.OUT:**

-   Ghi "CO" nếu hai xâu ký tự là tương đương, ngược lại hai xâu không
    tương đương thì ghi "KHONG"

**Ví dụ:**

+-----------------------------------+-----------------------------------+
| **BAI1.INP**                      | **BAI1.OUT**                      |
+===================================+===================================+
| Truong em dep lam                 | CO                                |
|                                   |                                   |
| Dep lam truong em                 |                                   |
+-----------------------------------+-----------------------------------+

**Ràng buộc:** 60% số điểm tương ứng với 60% số test có độ dài xâu không
quá 100 ký tự.

DAPAN

**Bài 1**: **Xâu ký tự**

CONST

tfi = \'BAI1.INP\';

tfo = \'BAI1.OUT\';

VAR

n1,n2,i : longint;

s1,s2 : string;

d1,d2 : array\[\'A\'..\'Z\'\] of longint;

ch : char;

ok : boolean;

BEGIN

assign(input, tfi); reset(input);

assign(output, tfo); rewrite(output);

readln(s1);

readln(s2);

n1 := length(s1);

n2 := length(s2);

ok := true;

if n1 \<\> n2 then ok := false

else

begin

for i := 1 to n1 do if s1\[i\] \<\> \' \' then
inc(d1\[upcase(s1\[i\])\]);

for i := 1 to n2 do if s2\[i\] \<\> \' \' then
inc(d2\[upcase(s2\[i\])\]);

for ch := \'A\' to \'Z\' do

if d1\[ch\] \<\> d2\[ch\] then

begin

ok := false;

break;

end;

end;

if ok then write(\'CO\') else write(\'KHONG\');

close(input);close(output);

END.
