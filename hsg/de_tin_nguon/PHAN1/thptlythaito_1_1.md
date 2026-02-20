***Đào Văn Quý -- THPT Lý Thái Tổ***

> CAUHOI

Các số từ 1 đến 2000 được xếp theo thứ tự tăng dần trên một đường tròn
theo chiều kim đồng hồ. Bắt đầu từ số 1, chuyển động theo chiều kim đồng
hồ, cứ bước qua một số lại xoá đi một số. Công việc đó tiếp diễn cho đến
khi trên vòng tròn còn lại đúng một số. Lập chương trình tính và in ra
số đó.

> DAPAN (6đ)

**Program** vd;

**Uses** crt;

**Var** s:array\[1..2000\] **of** integer;

i:integer;

**Begin**

Clrscr;

**for** i:=0 **to** 1999 **do** s\[i\]:=i+1;

s\[2000\]:=1;

i:=1;

**repeat**

s\[i\]:=s\[s\[i\]\];

i:=s\[i\];

**until**

s\[i\]=i;

writeln(i);

readln;

**End**.
