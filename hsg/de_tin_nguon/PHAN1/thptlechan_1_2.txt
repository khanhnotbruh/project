Trần Thị Vân Oanh_THPT Lê Chân

CÂU HỎI: SỐ PHONG PHÚ

> Trong một tiết toán thầy giáo của Nam có giảng về số phong phú, đó các
> số mà tổng các ước số của số đó (không kể chính nó) lớn hơn số đó. Ví
> dụ, số 12 có tổng các ước số (không kể 12) là 1 + 2 + 3 + 4 + 6 = 16
> \> 12. Do đó 12 là một số phong phú.
>
> Nam rất thích thú và muốn viết một chương trình đếm số phong phú trong
> đoạn \[L,R\].Bạn hãy giúp Nam nhé.
>
> Dữ liệu tệp sopp.inp gồm 2 số L, R (1 \<= L \<= R \<= 10^5^)
>
> Dữ liệu ra tệp sopp.out chứa số nguyên duy nhất là số số phong phú
> trong đoạn \[L, R\].
>
> Ví dụ

  ------------------------------------------------------------------------
  Sopp.inp                Sopp.out                 Giải thích
  ----------------------- ------------------------ -----------------------
  10 100                  22                       

  ------------------------------------------------------------------------

> Chú ý: Có 50% số test có 1 \<= L \<= R \<= 10^3^

TRẢ LỜI

var m,R,L:longint;

f1,f2:text;

i:longint;

function tonguoc(n:longint):longint;

var s,i:longint;

begin s:=1;

for i:=2 to trunc(sqrt(n)) do

if n mod i = 0 then s:=s+i + n div i;

if trunc(sqrt(n))=sqrt(n) then s:=s-trunc(sqrt(n));

exit(s);

end;

begin

assign(f1,\'sopp.inp\');

reset(f1);

assign(f2,\'sopp.out\');

rewrite(f2);

readln(f1,L,R);

m:=0;

for i:=L to R do

if tonguoc(i) \> i then inc(m);

write(f2,m);

close(f1);

close(f2);

end.
