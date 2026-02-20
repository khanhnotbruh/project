**Mạc Văn Tươi - Trường THPT Lê Ích Mộc**

**CAUHOI**

**Giai thừa**

Cho trước số tự nhiên N.

***Yêu cầu:*** Tìm số tự nhiên K nhỏ nhất sao cho K! có đúng N chữ số.

***Dữ liệu vào:*** Cho trong file văn bản Bai1.INP, có cấu trúc như sau:

*- Dòng 1:* Ghi số Tự nhiên N. (1 ≤ N≤ 10^4^).

***Dữ liệu ra:*** Ghi ra file văn bản Bai1.OUT

-   Duy nhất 1 giá trị số tự nhiên K tìm được. nếu không có thig ghi -1

***Ví dụ:***

  ------------------------ ----------------------- -----------------------
  **Bai1.INP**             **Bai1.OUT**            **Giải thích**

  3                        5                       
  ------------------------ ----------------------- -----------------------

DAPAN

Const fi='Bai1.INP';

Fo='Bai1.OUT' ;

Var f1,f2 :text ;

N,k,d :Longint ;

X:real;

BEGIN

Assign(f1,fi);resset(f1);

Assign(f2,f0);resset(f2);

Read(f1,N);

K:=1; d:=1; x:=1;

While k\<n Do

Begin

Inc(k);

X:=x\*k;

While x\>10 Do

Begin

X:=x/10;

Inc(d);

End;

End;

If d=n Then write(f2,k) else write(f2,-1);

Close(f1);Close(f2);

END.
