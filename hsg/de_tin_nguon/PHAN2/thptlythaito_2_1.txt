***Đào Văn Quý -- THPT Lý Thái Tổ***

> CAUHOI

***Trên bàn cờ ô vuông NxN tại mỗi ô có thể xếp hoặc một con mèo con,
hoặc một quân cờ. Hai con mèo trên bàn cờ sẽ nhìn thấy nhau nếu trên
đ­ường thẳng nối chúng theo hàng ngang, hàng dọc hay đ­ường chéo không có
quân cờ nào cả.***

***Hãy tìm cách xếp mèo và quân cờ nh­ư trên sao cho số mèo lớn nhất mà
không có hai con mèo nào nhìn thấy nhau?***

DAPAN (7đ)

**Program** Che_Mat_meo;

**Uses** crt;

**Const** td=200;

**Var** i,j,n:integer;

out:string;

f:text;

**Procedure** Xuli;

**Begin**

**for** i:=1 **to** n **do**

**begin**

gotoxy(15,i+3);

**for** j:=1 **to** n **do**

**begin**

**if** (odd(i))**and**(odd(j)) **then**

**begin**

textcolor(11);

**if** out\<\>\'\' **then** write(f,\'M \')

**else**

**begin**

write(\'M \');

delay(td);

**end**;

**end**

**else**

**begin**

textcolor(14);

**if** out\<\>\'\' **then** write(f,\'o \')

**else**

**begin**

write(\'o \');

delay(td);

**end**;

**end**;

**end**;

writeln(f);

**end**;

**End**;

**BEGIN**

Clrscr; textcolor(2);

Write(\'Nhap n= \');

Readln(n);

**if** n\<=20 **then** out:=\'\'

**else**

**begin**

out:=\'matmeo.inp\';

writeln(\'Mo File meo.inp de xem ket qua\');

**end**;

Assign(f,out);

Rewrite(f);

writeln(f,\'(Chu M Ki hieu cho con meo, chu o ki hieu cho quan co)\');

Xuli; writeln(f);

Writeln(f,\'Tong cong co \',sqr((n+1) **div** 2),\' con meo\');

Close(f);

Readln;

**END**.
