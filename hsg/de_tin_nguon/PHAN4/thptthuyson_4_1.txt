Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài IV: 10 điểm.** Đảo chữ cái

Trong tiết học hoạt động ngoài giờ lên lớp có một phần chơi như sau:
người dẫn chương trình sẽ đọc 1 số từ, mỗi từ là 1 xâu ký tự liền nhau
sau đó yêu cầu người chơi đưa ra tất cả các từ có thể có phát sinh từ
xâu ký tự đó. Người nào trả lời đúng và trong thời gian nhanh nhất sẽ
giành được quà.

***Dữ liệu vào***: tệp văn bản **BAI4.INP** với các từ khác nhau, mỗi từ
ghi ở một dòng.

\- Dòng đầu tiên là một số tự nhiên cho biết số từ được cho ở dưới.

\- Mỗi dòng tiếp theo chứa một từ. Trong đó, một từ có thể chứa cả chữ
cái thường hoặc hoa từ A đến Z. Các chữ thường và hoa được coi như là
khác nhau. Một chữ cái nào đó có thể xuất hiện nhiều hơn một lần.

***Dữ liệu ra***: ghi ra tệp văn bản **BAI4.OUT** tất cả các từ khác
nhau được sinh từ các chữ cái của từ đó. Các từ được sinh ra từ một từ
đã cho phải được đưa ra theo thứ tự tăng dần của bảng chữ cái.

+-----------------------------+----------------------------------------+
| **BAI4.INP**                | **BAI4.OUT**                           |
+=============================+========================================+
| 2                           | ab                                     |
|                             |                                        |
| ab                          | ba                                     |
|                             |                                        |
| abc                         | abc                                    |
|                             |                                        |
|                             | acb                                    |
|                             |                                        |
|                             | bac                                    |
|                             |                                        |
|                             | bca                                    |
|                             |                                        |
|                             | cab                                    |
|                             |                                        |
|                             | cba                                    |
+-----------------------------+----------------------------------------+

**DAP AN**

+-------+----------------------------------------------------+---------+
| Bài   | CONST                                              |         |
| III   |                                                    |         |
|       | MAX = 100;                                         |         |
|       |                                                    |         |
|       | fi = \'BAI4.INP\';                                 |         |
|       |                                                    |         |
|       | fo = \'BAI4.OUT\';                                 |         |
|       |                                                    |         |
|       | TYPE                                               |         |
|       |                                                    |         |
|       | STR = array\[0..max\] of char;                     |         |
|       |                                                    |         |
|       | VAR                                                |         |
|       |                                                    |         |
|       | s: str;                                            |         |
|       |                                                    |         |
|       | f,g: text;                                         |         |
|       |                                                    |         |
|       | n: longint; { so luong tu}                         |         |
|       |                                                    |         |
|       | time: longint ;                                    |         |
|       |                                                    |         |
|       | PROCEDURE Nhap_dl;                                 |         |
|       |                                                    |         |
|       | Begin                                              |         |
|       |                                                    |         |
|       | Assign(f,fi);                                      |         |
|       |                                                    |         |
|       | Assign(g,fo);                                      |         |
|       |                                                    |         |
|       | Reset(f);                                          |         |
|       |                                                    |         |
|       | Rewrite(g);                                        |         |
|       |                                                    |         |
|       | Readln(f,n);                                       |         |
|       |                                                    |         |
|       | End;                                               |         |
|       |                                                    |         |
|       | PROCEDURE DocDay(var s:str);                       |         |
|       |                                                    |         |
|       | Begin                                              |         |
|       |                                                    |         |
|       | Fillchar(s,sizeof(s),chr(0));                      |         |
|       |                                                    |         |
|       | While not eoln(f) do                               |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | s\[0\]:=chr(ord(s\[0\])+1);                        |         |
|       |                                                    |         |
|       | read(f,s\[ord(s\[0\])\]);                          |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | End;                                               |         |
|       |                                                    |         |
|       | PROCEDURE VietDay(s:str);                          |         |
|       |                                                    |         |
|       | Var i :word;                                       |         |
|       |                                                    |         |
|       | Begin                                              |         |
|       |                                                    |         |
|       | For i:=1 to ord(s\[0\]) do Write(g,s\[i\]);        |         |
|       |                                                    |         |
|       | End;                                               |         |
|       |                                                    |         |
|       | PROCEDURE Sap_xep(l,r:word);                       |         |
|       |                                                    |         |
|       | Var i,j :word;                                     |         |
|       |                                                    |         |
|       | tg,tam :char;                                      |         |
|       |                                                    |         |
|       | Begin                                              |         |
|       |                                                    |         |
|       | i:=l;j:=r;                                         |         |
|       |                                                    |         |
|       | tg:=s\[(l+r) div 2\];                              |         |
|       |                                                    |         |
|       | Repeat                                             |         |
|       |                                                    |         |
|       | While ord(s\[i\]) \< ord(tg) do inc(i);            |         |
|       |                                                    |         |
|       | While ord(s\[j\]) \> ord(tg) do dec(j);            |         |
|       |                                                    |         |
|       | If i\<=j then                                      |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | tam:=s\[i\];                                       |         |
|       |                                                    |         |
|       | s\[i\]:=s\[j\];                                    |         |
|       |                                                    |         |
|       | s\[j\]:=tam;                                       |         |
|       |                                                    |         |
|       | inc(i);                                            |         |
|       |                                                    |         |
|       | dec(j);                                            |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Until i\>j;                                        |         |
|       |                                                    |         |
|       | If j\>l then Sap_xep(l,j);                         |         |
|       |                                                    |         |
|       | If i\<r then Sap_xep(i,r);                         |         |
|       |                                                    |         |
|       | End;                                               |         |
|       |                                                    |         |
|       | PROCEDURE Sinh_hv(s:str);                          |         |
|       |                                                    |         |
|       | Var vti,vtj,i,j:word;                              |         |
|       |                                                    |         |
|       | stop :boolean;                                     |         |
|       |                                                    |         |
|       | tam :char;                                         |         |
|       |                                                    |         |
|       | Begin                                              |         |
|       |                                                    |         |
|       | Writeln(g);                                        |         |
|       |                                                    |         |
|       | VietDay(s);                                        |         |
|       |                                                    |         |
|       | Repeat                                             |         |
|       |                                                    |         |
|       | Stop:=true;                                        |         |
|       |                                                    |         |
|       | For i:= ord(s\[0\]) downto 2 do                    |         |
|       |                                                    |         |
|       | If s\[i\] \> s\[i-1\] then                         |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | vti:=i-1;                                          |         |
|       |                                                    |         |
|       | stop:=false;                                       |         |
|       |                                                    |         |
|       | For j:=ord(s\[0\]) downto vti+1 do                 |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | If (ord(s\[j\])\>ord(s\[vti\])) then               |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | vtj:=j;                                            |         |
|       |                                                    |         |
|       | break;                                             |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | tam:=s\[vtj\];                                     |         |
|       |                                                    |         |
|       | s\[vtj\]:=s\[vti\];                                |         |
|       |                                                    |         |
|       | s\[vti\]:=tam;                                     |         |
|       |                                                    |         |
|       | For j:=1 to ((ord(s\[0\]) - (vti+1))+1) div 2 do   |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | tam:=s\[vti+j\];                                   |         |
|       |                                                    |         |
|       | s\[vti+j\]:=s\[ord(s\[0\])-j+1\];                  |         |
|       |                                                    |         |
|       | s\[ord(s\[0\])-j+1\]:=tam;                         |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Writeln(g);                                        |         |
|       |                                                    |         |
|       | VietDay(s);                                        |         |
|       |                                                    |         |
|       | break;                                             |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Until stop;                                        |         |
|       |                                                    |         |
|       | End;                                               |         |
|       |                                                    |         |
|       | PROCEDURE Xu_ly;                                   |         |
|       |                                                    |         |
|       | Var i:longint;                                     |         |
|       |                                                    |         |
|       | Begin                                              |         |
|       |                                                    |         |
|       | For i:=1 to n do                                   |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | DocDay(s);                                         |         |
|       |                                                    |         |
|       | readln(f);                                         |         |
|       |                                                    |         |
|       | Sap_xep(1,ord(s\[0\]));                            |         |
|       |                                                    |         |
|       | Sinh_hv(s);                                        |         |
|       |                                                    |         |
|       | Writeln(g);                                        |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | Close(f);                                          |         |
|       |                                                    |         |
|       | Close(g);                                          |         |
|       |                                                    |         |
|       | End;                                               |         |
|       |                                                    |         |
|       | BEGIN                                              |         |
|       |                                                    |         |
|       | Nhap_dl;                                           |         |
|       |                                                    |         |
|       | Xu_ly;                                             |         |
|       |                                                    |         |
|       | END.                                               |         |
+=======+====================================================+=========+
+-------+----------------------------------------------------+---------+
