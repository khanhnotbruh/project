Vũ Văn Lưu -- THPT Toàn Thắng

CAUHOI

**Bài 1: Tổng ước (6 điểm).**

Cho số nguyên N tính tổng các ước của N.

**Dữ liệu vào**: Từ file văn bản **BAI1.INP** một số nguyên N (1≤ N ≤
10^12^).

**Dữ liệu ra**: File văn bản **BAI1.OUT** giá trị là tổng các ước của
N.\
**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                              **BAI1.INP**
  ----------------------------------------- -----------------------------
  10                                        18

  -----------------------------------------------------------------------

**Ràng buộc:**

*- Có 40% số test tương ứng với 40% số điểm có: 0\<n≤10^3^;\
- Có 40% số test tương ứng với 40% số điểm có: 10^3^\<n≤10^6^;\
- Có 20% số test tương ứng với 40% số điểm có: 10^6^\<n≤10^12^;*

DAPAN

Lời giải tham khảo:

program bai1;

const

fi=\'bai1.inp\';

fo=\'bai1.out\';

var i: longint;

f1,f2:text;

n,p,ans:qword;

begin

assign(f1,fi); reset(f1);

assign(f2,fo); rewrite(f2);

readln(f1,n);ans:=1+n;

p:=trunc(sqrt(n));

for i:=2 to p do

if n mod i =0 then

inc(ans,i+n div i);

if p\*p=n then dec(ans,p);

write(f2,ans);

close(f2);

close(f1);

end.
