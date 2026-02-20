Mạc Văn Tươi - Trường THPT Lê Ích Mộc

CAUHOI

**Dãy con**

Cho N và dãy N số nguyên A (A~i~ \<=10^6^) và số nguyên K

**Yêu cầu**: Hãy tìm số lượng dãy con của dãy A có ít nhất K phần tử
bằng nhau.\
***Dữ liệu:*** Vào từ file văn bản **Bai4.INP**

\- Dòng 1: Chứa hai số nguyên dương N và K (N,K\<=5x10^6^)

\- Dòng tiếp theo chứa N số nguyên A~i~ \<10^8^

Các số trên cùng một dòng được ghi cách nhau ít nhất một dấu cách.\
***Kết quả:*** Ghi ra file văn bản **Bai4.OUT** là số dãy con tìm được

***Ví dụ***:

+----------------------------------+-----------------------------------+
| **Bai4.INP**                     | **Bai4.OUT**                      |
+==================================+===================================+
| 4 2                              | 3                                 |
|                                  |                                   |
| 1 2 1 2                          |                                   |
+----------------------------------+-----------------------------------+

DAPAN

Const fi='Bai4.INP';

Fo='Bai4.OUT' ;

Var f1,f2 :text ;

N,i,j,d:longint;

a:array\[1..400000\] of longint;

b:array\[1..100000000\] of longint;

k,n,i,j,sl:longint;

BEGIN

Assign(f1,fi);resset(f1);

Assign(f2,f0);resset(f2);

Read(f1,n,k);

i:=0;

While i\<n Do

Begin

Inc(i); Read(f1,A\[i\]);

End;

i:=1; j:=1;

sl:=0;

inc(d\[a\[1\]\]);

While i\<n-k+1 Do

If d\[a\[j\]\]=k then

Begin

Sl:=sl + n - j+1;

Dec(d\[a\[j\]\]);

Inc(i);

End

Else if j\<n Then

Begin

Inc(j); inc(d\[a\[j\]\]);

End

Else break;

Write(f2,sl);

Close(f1);Close(f2);

END.
