Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài 1 *(6 điểm)*. Ghép xâu:**

Cho 2 xâu ký tự S1, S2. Có thể ghép một số lần liên tiếp xâu S1 để được
xâu S2 hay không?

Dữ liệu: Vào từ tệp **BAI1.INP**

\- Dòng 1. Ghi xâu S1

\- Dòng 2: Ghi xâu S2

Kết quả: Ghi vào tệp **BAI1.OUT** số K là số lần ghép liên tiếp xâu S1
để được xâu S2, trường hợp ngược lại ghi số 0.

+----------------------------+-----------------------------------------+
| **BAI1.INP**               | **BAI1.OUT**                            |
+============================+=========================================+
| AAB                        | 3                                       |
|                            |                                         |
| AABAABAAB                  |                                         |
+----------------------------+-----------------------------------------+

DAP AN

+-----+----------------------------------------------------------------+
| Bài | const fi=\'BAI1.INP\';                                         |
| I   |                                                                |
|     | fo=\'BAI1.OUT\';                                               |
|     |                                                                |
|     | var s1,s2,s:ansistring;                                        |
|     |                                                                |
|     | i,dem:longint; f,g:text;                                       |
|     |                                                                |
|     | > {==========}                                                 |
|     |                                                                |
|     | begin                                                          |
|     |                                                                |
|     | > assign(f,fi); reset(f);                                      |
|     | >                                                              |
|     | > assign(g,fo\'); rewrite(g);                                  |
|     | >                                                              |
|     | > readln(f,s1);                                                |
|     | >                                                              |
|     | > readln(f,s2);                                                |
|     | >                                                              |
|     | > s:=s2; dem:=0;                                               |
|     | >                                                              |
|     | > while (length(s)\>0) and (pos(s1,s)\<\>0) do                 |
|     | >                                                              |
|     | > begin                                                        |
|     | >                                                              |
|     | > inc(dem);                                                    |
|     | >                                                              |
|     | > delete(s,pos(s1,s),length(s1));                              |
|     | >                                                              |
|     | > end;                                                         |
|     | >                                                              |
|     | > if length(s)\<\>0 then write(g,0)                            |
|     | >                                                              |
|     | > else write(g,dem);                                           |
|     | >                                                              |
|     | > close(f); close(g);                                          |
|     |                                                                |
|     | end.                                                           |
+=====+================================================================+
+-----+----------------------------------------------------------------+
