**Đỗ Trọng Trung -- THPT Tiên Lãng**

**CAUHOI**

**Bài 2**. ***Đặt tên chương trình nguồn là BAI2.PAS***

**Xâu con** : Cho trước hai xâu kí tự S1 và S2. Viết chương trình tính
số lần lặp lại của xâu S1 trong xâu S2.

**Dữ liệu:** Vào từ tệp văn bản XAU.INP gồm:

\- Dòng đầu tiên chứa xâu S1.

\- Dòng thứ hai chứa xâu S2.

**Kết quả:** Ghi ra tệp văn bản XAU.OUT:

\- Chỉ một dòng duy nhất ghi số lần lặp lại của xâu S1 trong xâu S2.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| XAU.INP                           | XAU.OUT                           |
+===================================+===================================+
| aba                               | 4                                 |
|                                   |                                   |
| bababababa                        |                                   |
+-----------------------------------+-----------------------------------+

**DAPAN**

**Bài 2**

**Uses** crt;

**Var** f:text; S1,S2:string;

I,j:integer;

**Begin**

Clrscr;

Assign(f,'XAU.INP');

Reset(f);

Readln(f,S1); Readln(f,S2);

Close(f);

I:=0;

While Pos(S1,S2)\<\>0 Do

Begin

Inc(i);

J:=Pos(S1,S2);

Delete(S2,1,j);

> End;

Assign(f,'XAU.OUT');

Rewrite(f);

Write(f,j);

Close(f);

Readln;

**End.**
