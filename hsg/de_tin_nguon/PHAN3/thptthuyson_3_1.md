Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài III: (8 điểm) Tìm dãy số nhỏ nhất**

Cho một xâu kí tự S, trong đó có ít nhất 10 chữ số. Hãy loại bỏ tất cả
các kí tự chữ cái ra khỏi xâu sao cho còn lại 10 chữ số cuối cùng theo
đúng thứ tự đó tạo thành số nhỏ nhất.

***Dữ liệu vào***: vào từ file văn bản **BAI3.INP** gồm 1 dòng duy nhất
chứa xâu ký tự S. Độ dài xâu ký tự S không quá 1000 ký tự.

***Kết quả***: ghi ra tệp văn bản **BAI3.OUT** một số nguyên duy nhất
gồm 10 kí tự số cuối cùng là số nhỏ nhất.

  -----------------------------------------------------------------------
  **BAI3.INP**                             **BAI3.OUT**
  ---------------------------------------- ------------------------------
  bca7b48c1233ED3c432be23                  1233343223

  -----------------------------------------------------------------------

Ràng buộc: 60% số điểm tương ứng với 60% số test có độ dài xâu không quá
100 ký tự.

DAP AN

+-------+--------------------------------------------------------------+
| Bài   | \* *Chương trình:*                                           |
| II    |                                                              |
|       | var f,g:text; s:ansistring;                                  |
|       |                                                              |
|       | {=====================}                                      |
|       |                                                              |
|       | procedure Nhap;                                              |
|       |                                                              |
|       | Begin                                                        |
|       |                                                              |
|       | assign(f,\'BAI3.INP\'); reset(f);                            |
|       |                                                              |
|       | read(f,S);                                                   |
|       |                                                              |
|       | close(f);                                                    |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | {======================}                                     |
|       |                                                              |
|       | procedure xuly;                                              |
|       |                                                              |
|       | var i,j,k:longint;                                           |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | assign(g,\'BAI3.OUT\'); rewrite(g);                          |
|       |                                                              |
|       | i:=1;                                                        |
|       |                                                              |
|       | repeat                                                       |
|       |                                                              |
|       | if s\[i\] in \[\'0\'..\'9\'\] then inc(i)                    |
|       |                                                              |
|       | else delete(s,i,1);                                          |
|       |                                                              |
|       | until i\>length(s);                                          |
|       |                                                              |
|       | for i:=1 to 10 do                                            |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | k:=i;                                                        |
|       |                                                              |
|       | for j:=i to length(s)+i-10 do                                |
|       |                                                              |
|       | if s\[k\]\>s\[j\] then k:=j;                                 |
|       |                                                              |
|       | if k\>i then delete(s,i,k-i);                                |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | write(g,copy(s,1,10));                                       |
|       |                                                              |
|       | close(g);                                                    |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | {===========================}                                |
|       |                                                              |
|       | Begin                                                        |
|       |                                                              |
|       | Nhap; xuly;                                                  |
|       |                                                              |
|       | > end.                                                       |
+=======+==============================================================+
+-------+--------------------------------------------------------------+
