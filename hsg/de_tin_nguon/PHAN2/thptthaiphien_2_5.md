**LÊ ĐÌNH LONG --THPT THÁI PHIÊN**

**CÂU HỎI**

**[Bài 2]{.underline} Xâu con**

Cho tr­ước hai xâu kí tự S1 và S2 (s1,s2\<=1000) . Viết ch­ương trình tính
số lần lặp lại của xâu S1 trong xâu S2.

***Dữ liệu vào*:** Vào từ tệp văn bản BAI2.INP gồm:

\- Dòng đầu tiên chứa xâu S1.

\- Dòng thứ hai chứa xâu S2.

***Dữ liệu ra*:** Ghi ra tệp văn bản BAI2.OUT:

\- Chỉ một dòng duy nhất ghi số lần lặp lại của xâu S1 trong xâu S2.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| **BAI2.INP**                      | **BAI2.OUT**                      |
+===================================+===================================+
| aba                               | 5                                 |
|                                   |                                   |
| bababababa                        |                                   |
+-----------------------------------+-----------------------------------+

**ĐÁP ÁN**

**[BÀI 2:]{.underline}**

PROGRAM xau_con;

USES crt;

VAR s1,s2: ANSISTRING;

f1,f2: TEXT;

PROCEDURE nhap;

BEGIN

assign(f1,\'BAI2.inp\');reset(f1);

assign(f2,\'BAI2.out\');rewrite(f2);

readln(f1,s1);read(f1,s2);

close(f1);

END;

PROCEDURE xuli;

VAR i,k: BYTE;

BEGIN

k:=0;

WHILE pos(s1,s2)\<\>0 DO BEGIN

i:=pos(s1,s2);

inc(k);

delete(s2,i,1);

END;

write(f2,k);

write(k);

close(f2);

END;

BEGIN

clrscr;

nhap;

xuli;

END.
