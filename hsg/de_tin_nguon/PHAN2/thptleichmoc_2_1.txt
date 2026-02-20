Mạc Văn Tươi - Trường THPT Lê Ích Mộc

CAUHOI

**Tổng số hoàn hảo**

Số hoàn hảo là số mà tổng các ước của nó (trừ chính nó) bằng chính nó.

***Yêu cầu:*** Tính tổng các số hoàn hảo nhỏ hơn hoặc bằng N.

***Dữ liệu vào:*** Cho trong file văn bản Bai1.INP, có cấu trúc như sau:

*- Dòng 1:* Ghi số nguyên dương N. (1 ≤ N≤ 10^6^).

***Dữ liệu ra:*** Ghi ra file văn bản Bai1.OUT

-   Duy nhất 1 giá trị số nguyên dương là tổng của các số hoàn hảo \<=N

***Ví dụ:***

  ------------------------ ----------------------- -----------------------
  **Bai2.INP**             **Bai2.OUT**            **Giải thích**

  30                       34                      
  ------------------------ ----------------------- -----------------------

DAP AN

**Tổng số hoàn hảo**

Const fi='Bai2.INP';

Fo='Bai2.OUT' ;

Var f1,f2 :text ;

S,i,N :Longint ;

Function Hoanhao(N :longint) :boolean ;

Var S,i:longint;

Begin

S:=0;

For i:=1 to trunc(sqrt(n)) Do

If n mod i =0 then

S:=s+i+ n div i ;

If i=sqrt(n) then

S:=s-I;

S:=s-n;

Hoanhao:=s=n;

End;

BEGIN

Assign(f1,fi);resset(f1);

Assign(f2,f0);resset(f2);

Read(f1,N);

S:=0;

For i:=2 to n Do

If hoanhao(i) then s:=s+i;

Write(f2,s);

Close(f1);Close(f2);

END.
