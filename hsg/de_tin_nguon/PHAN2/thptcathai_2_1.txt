**Bùi Thị Thu Hằng -- THPT Cát Hải**

**CAUHOI**

**Đếm ước số**

Bạn Nam rất thích học toán, đặc biệt là các bài toán về tổ hợp. Các công
thức tính tổ hợp như đếm số hoán vị, số chỉnh hợp hay số tổ hợp đều phải
tính các giá trị giai thừa. Như ta đã biết, giai thừa của một số nguyên
dương N (ký hiệu là N!) bằng tích của các số tự nhiên từ 1 đến N, chẳng
hạn 4!= 1x2x3x4 = 24 hay 6!= 1x2x3x4x5x6 = 720.

Khi tính toán các giá trị giai thừa như vậy, bạn Nam nhận thấy kết quả
tính được có số lượng ước số nhiều hơn số thừa số tạo ra kết quả đó. Ví
dụ 4! Là tích của bốn thừa số 1,2,3 và 4 nhưng kết quả 24 lại có 8 ước
số là 1,2,3,4,6,8,12,24.

**Yêu cầu**: Với một số nguyên dương N, bạn hãy lập trình giúp bạn Nam
tính xem giá trị N! có bao nhiêu ước số.

**Dữ liệu đầu vào** từ file văn bản**BAI2.TXT**gồm một dòng ghi số
nguyên dương N.

**Kết quả** ghi vào file văn bản **BAI2_OUT.TXT** gồm một dòng ghi kết
quả tính được

**Ví dụ:**

  ------------------------------------------------------------------------
  **BAI2.INP**                                 **BAI2_OUT.TXT**
  ------------------------- ------------------ ---------------------------
  4                                            8

  6                                            30
  ------------------------------------------------------------------------

*..................Hết ................*

**DAPAN**

  ----------------------------------------------------------------------------
  **BÀI 2**  BAI2**.TXT**                 **BAI2_OUT.TXT**   **Điểm**
  ---------- ---------------------------- ------------------ -----------------
  Test 1     1                            1                  1

  Test 2     5                            16                 1

  Test 3     10                           270                1

  Test 4     14                           2592               1

  Test 5     15                           4032               1

  Test 6     20                           41040              1

  **TỔNG**                                                   6
  ----------------------------------------------------------------------------

**\
**

**BAI2.pas**

program BAI2;

const fin = \'BAI2.TXT\';

fout = \'BAI2_OUT.TXT\' ;

var A, B: array \[1..50\] of longint;

k, i, t, N, j: longint;

s: int64;

f: text;

begin

assign (f, fin);

reset (f);

read (f, N);

close (f) ;

k:=0;

for i:=2 to N do

begin

t:=i;

for j:=1 to k do

while t mod A\[j\]=0 do

begin

Inc(B\[j\]);

t:=t div A\[j\];

end;

if t\>1 then

begin

Inc(k);

A\[k\]:=t;

B\[k\]:=1;

end;

end;

s:=1;

for i:=1 to k do s:= s\*(b\[i\]+1);

Assign(f, fout);

Rewrite (f);

Write (f, S);

Close (f);

End.
