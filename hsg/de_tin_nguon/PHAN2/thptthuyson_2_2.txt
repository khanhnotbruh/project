Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài 2 *(6 điểm)*.** Xâu ký tự X được gọi là xâu con của xâu ký tự Y
nếu ta có thể xoá đi một số ký tự trong xâu Y để được xâu X.

Cho biết hai xâu ký tự A và B, hãy tìm xâu ký tự C có độ dài lớn nhất và
là con của cả A và B.

Dữ liệu: Vào từ tệp **BAI2.INP**

\- Dòng 1. xâu ký tự A

\- Dòng 2: xâu ký tự B

Kết quả: Ghi vào tệp **BAI2.OUT** chỉ gồm một dòng là độ dài xâu C tìm
được.

  -----------------------------------------------------------------------
  **BAI2.INP**                  **BAI2.OUT**
  ----------------------------- -----------------------------------------
  abc1def2ghi3\                 10
  abcdefghi123                  

  -----------------------------------------------------------------------

DAP AN

+-----+----------------------------------------------------------------+
| Bài | program qbstr;                                                 |
| 2   |                                                                |
|     | uses math;                                                     |
|     |                                                                |
|     | const   fi=\'bai2.inp\';                                       |
|     |                                                                |
|     | fo='bai2.out';                                                 |
|     |                                                                |
|     |         nmax=1000;                                             |
|     |                                                                |
|     | var                                                            |
|     |                                                                |
|     |         f,g:text;                                              |
|     |                                                                |
|     |         s1,s2: ansistring;                                     |
|     |                                                                |
|     |         KQ: array\[0..nmax+10,0..nmax+10\] of word;            |
|     |                                                                |
|     |                                                                |
|     |                                                                |
|     | procedure docfile;                                             |
|     |                                                                |
|     | begin                                                          |
|     |                                                                |
|     |         assign(f,fi); reset(f);                                |
|     |                                                                |
|     |         readln(f,s1);                                          |
|     |                                                                |
|     |         readln(f,s2);                                          |
|     |                                                                |
|     |         close(f);                                              |
|     |                                                                |
|     | end;                                                           |
|     |                                                                |
|     |                                                                |
|     |                                                                |
|     | procedure bpa;                                                 |
|     |                                                                |
|     | var     i,j:word;                                              |
|     |                                                                |
|     | begin                                                          |
|     |                                                                |
|     | assign(g,fo); rewrite(g);                                      |
|     |                                                                |
|     |         for i:=0 to length(s1) do                              |
|     |                                                                |
|     |                 kq\[i,0\]:=0;                                  |
|     |                                                                |
|     |                                                                |
|     |                                                                |
|     |         for i:=0 to length(s2) do                              |
|     |                                                                |
|     |                 kq\[0,i\]:=0;                                  |
|     |                                                                |
|     |                                                                |
|     |                                                                |
|     |         for i:=1 to length(s1) do                              |
|     |                                                                |
|     |                 for j:=1 to length(s2) do                      |
|     |                                                                |
|     |                         if s1\[i\]=s2\[j\] then                |
|     |                                                                |
|     |                                 KQ\[i,j\]:=kq\[i-1,j-1\] + 1   |
|     |                                                                |
|     |                         else                                   |
|     |                                                                |
|     |                                                                |
|     |                       KQ\[i,j\]:=max(kq\[i,j-1\],kq\[i-1,j\]); |
|     |                                                                |
|     |                                                                |
|     |                                                                |
|     |         writeln(g,kq\[length(s1),length(s2)\]);                |
|     |                                                                |
|     | close(g);                                                      |
|     |                                                                |
|     | end;                                                           |
|     |                                                                |
|     |                                                                |
|     |                                                                |
|     | begin                                                          |
|     |                                                                |
|     |         docfile;                                               |
|     |                                                                |
|     | bpa;                                                           |
|     |                                                                |
|     | end.                                                           |
+=====+================================================================+
+-----+----------------------------------------------------------------+
