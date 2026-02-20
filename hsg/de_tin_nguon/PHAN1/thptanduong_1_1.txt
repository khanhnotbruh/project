**Phạm Đức Cường -- THPT An Dương**

**[Bài 1]{.underline}**. Đếm số lượng ước số: Gọi 𝑑(𝑁) = số lượng ước số
của số nguyên dương N.

**Ví dụ**: 𝑑(8) = 4 vì 8 có 4 ước số là {1; 2; 4; 8}

**Yêu cầu**: Cho số nguyên dương N. Hãy tính giá trị biểu thức:

> 𝑃 = 𝑑(𝑁) + 𝑑(𝑁 + 1)

**Dữ liệu vào**: Cho trong tệp BAI1.INP

\- Gồm 1 số nguyên dương N (𝑁 ≤ 1.000)

**Kết quả**: Ghi ra tệp BAI1.OUT

\- Ghi 1 số nguyên dương duy nhất là giá trị biểu thức 𝑃 tìm được?

Ví dụ:

  -----------------------------------------------------------------------
  **BAI1.INP**            **BAI1.OUT**            **Giải thích**
  ----------------------- ----------------------- -----------------------
  5                       6                       𝑑(5) = 2

                                                  𝑑(6) = 4
  -----------------------------------------------------------------------

Bai1: const

tfi = \'bai1.inp\';

tfo = \'bai1.out\';

var

fi,fo : text;

n,i,res,d1,d2 : longint;

procedure nhap;

begin

assign (fi,tfi); reset(fi);

read (fi,n);

close(fi);

end;

procedure xuly;

begin

d1 :=0; d2 :=0;

for i:= 1 to trunc(sqrt(n)) do

if n mod i =0 then inc(d1,2);

for i := 1 to trunc(sqrt(n+1)) do

if (n+1) mod i = 0 then inc (d2,2);

if (n-sqr(trunc(sqrt(n)))=0) then dec(d1);

if (n+1-sqr(trunc(sqrt(n+1)))=0) then dec(d2);

res := d1+d2;

end;

procedure inkq;

begin

assign (fo,tfo); rewrite (fo);

write (fo,res);

close(fo);

end;

begin

nhap;

xuly;

inkq;

end.
