Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài 1 *(6 điểm)*. Đổi cơ số:**

Viết chương trình cho phép đổi một số từ cơ số 10 sang cơ số bất kỳ.

Dữ liệu: Vào từ tệp **COSO.INP**

\- Dòng 1. Số cần đổi

\- Dòng 2: cơ số

Kết quả: Ghi vào tệp COSO**.OUT**

+----------------------------+-----------------------------------------+
| **COSO.INP**               | **COSO.OUT**                            |
+============================+=========================================+
| 5                          | 101                                     |
|                            |                                         |
| 2                          |                                         |
+----------------------------+-----------------------------------------+

DAP AN

+-----+----------------------------------------------------------------+
| Bài | Program Doi_co_so;                                             |
| I   |                                                                |
|     | Var a,n,s: longint;                                            |
|     |                                                                |
|     | f,g:text;                                                      |
|     |                                                                |
|     | procedure doc;                                                 |
|     |                                                                |
|     | begin                                                          |
|     |                                                                |
|     | assign(f,\'coso.int\');reset(f);                               |
|     |                                                                |
|     | readln(f,n);readln(f,s);                                       |
|     |                                                                |
|     | close(f);                                                      |
|     |                                                                |
|     | end;                                                           |
|     |                                                                |
|     | Function D10_CS(n:longint;s:byte):string;                      |
|     |                                                                |
|     | Var CS: array\[0..100\] of char;                               |
|     |                                                                |
|     | i: integer;                                                    |
|     |                                                                |
|     | ch:Char;                                                       |
|     |                                                                |
|     | Tam:string;                                                    |
|     |                                                                |
|     | Begin                                                          |
|     |                                                                |
|     | i:=0;                                                          |
|     |                                                                |
|     | ch:=\'0\';                                                     |
|     |                                                                |
|     | while i\<=9 do                                                 |
|     |                                                                |
|     | Begin                                                          |
|     |                                                                |
|     | CS\[i\]:=Ch;                                                   |
|     |                                                                |
|     | inc(i);                                                        |
|     |                                                                |
|     | inc(ch);                                                       |
|     |                                                                |
|     | End;                                                           |
|     |                                                                |
|     | i:=10;                                                         |
|     |                                                                |
|     | ch:=\'A\';                                                     |
|     |                                                                |
|     | While ch\<\'Z\' do                                             |
|     |                                                                |
|     | Begin                                                          |
|     |                                                                |
|     | CS\[i\]:=ch;                                                   |
|     |                                                                |
|     | inc(i);                                                        |
|     |                                                                |
|     | inc(ch);                                                       |
|     |                                                                |
|     | End;                                                           |
|     |                                                                |
|     | tam:=\'\';                                                     |
|     |                                                                |
|     | While n\<\>0 do                                                |
|     |                                                                |
|     | Begin                                                          |
|     |                                                                |
|     | tam:= CS\[n mod s\]+ Tam;                                      |
|     |                                                                |
|     | n:=n div s;                                                    |
|     |                                                                |
|     | End;                                                           |
|     |                                                                |
|     | D10_CS:=Tam;                                                   |
|     |                                                                |
|     | End;                                                           |
|     |                                                                |
|     | Begin                                                          |
|     |                                                                |
|     | doc;                                                           |
|     |                                                                |
|     | assign(g,\'coso.out\');rewrite(g);                             |
|     |                                                                |
|     | Write(g,D10_CS(n,s));                                          |
|     |                                                                |
|     | close(g);                                                      |
|     |                                                                |
|     | Readln                                                         |
|     |                                                                |
|     | End.                                                           |
+=====+================================================================+
+-----+----------------------------------------------------------------+
