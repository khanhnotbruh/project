Vũ Quốc Mạnh -- THPT Nguyễn Khuyến

CÂU HỎI

**Bài 2. Dãy con lồi (Tên chương trình nguồn BAI_2.PAS)(4 điểm)**

Cho dãy n số nguyên A1,A2,A3,..,An được gọi là lồi, nếu nó giảm nghiêm
ngặt từ A1 đến Ak (1\<k\<n) nào đó,rồi tăng nghiêm ngặt tới An.Cho một
dãy số nguyên tùy ý, bằng cách xóa bớt một số phần tử của dãy và giữ
nguyên trình tự các phần tử còn lại, ta nhận được dãy con lồi.Yêu cầu:
Hãy tìm độ dài của dãy con lồi dài nhất.

Dữ liệu vào: Từ file văn bản DAYLOI.INP gồm n+1 dòng:

\- Dòn đầu là n (n\<=10000)

\- n dòng sau, mỗi dòng một số nguyên ai của dãy.

Dữ liệu ra: Ghi ra file văn bản DAYLOI.OUT gồm một số nguyên là độ dài
của dãy con lồi dài nhất.

+---------------------------------+------------------------------------+
| BAI_2.INP                       | BAI_2.OUT                          |
+---------------------------------+------------------------------------+
| 12                              | 9                                  |
|                                 |                                    |
| 11 10 5 8 4 2 -1 4 6 8 6 12     |                                    |
+---------------------------------+------------------------------------+

ĐÁP ÁN

+-------+--------------------------------------------------------------+
| *     | const fin=\'DAYLOI.INP\';                                    |
| *[Bài |                                                              |
| 2     | fou=\'DAYLOI.OUT\';                                          |
| ]{.un |                                                              |
| derli | nmax=2000;                                                   |
| ne}** |                                                              |
|       | type arr= Array\[0..nmax+1\] of                              |
|       |                                                              |
|       | integer;                                                     |
|       |                                                              |
|       | var                                                          |
|       |                                                              |
|       | A: arr;                                                      |
|       |                                                              |
|       | U,Tru,D,TrD: arr; {Up, Down}                                 |
|       |                                                              |
|       | n, KyLuc, Vitri: integer;                                    |
|       |                                                              |
|       | f: text;                                                     |
|       |                                                              |
|       | procedure Nhap;                                              |
|       |                                                              |
|       | var i: integer;                                              |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | assign(f,fin);                                               |
|       |                                                              |
|       | reset(f);                                                    |
|       |                                                              |
|       | readln(f,n);                                                 |
|       |                                                              |
|       | for i:=1 to n do read(f,A\[i\]);                             |
|       |                                                              |
|       | close(f);                                                    |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | procedure GhiLen(i: integer);                                |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | if TrU\[i\]\<\>0 then                                        |
|       |                                                              |
|       | GhiLen(TrU\[i\]);                                            |
|       |                                                              |
|       | Write(f,A\[i\],\' \');                                       |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | procedure GhiXuong(i:integer);                               |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | Write(f,A\[i\],\' \');                                       |
|       |                                                              |
|       | if TrD\[i\]\<\>0 then                                        |
|       |                                                              |
|       | GhiXuong(TrD\[i\]);                                          |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | procedure Xuat;                                              |
|       |                                                              |
|       | var i: integer;                                              |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | assign(f,fou);                                               |
|       |                                                              |
|       | rewrite(f);                                                  |
|       |                                                              |
|       | writeln(f,KyLuc);                                            |
|       |                                                              |
|       | close(f);                                                    |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | procedure ChuanBi;                                           |
|       |                                                              |
|       | var i: integer;                                              |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | for i:=1 to n do                                             |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | U\[i\]:=1;                                                   |
|       |                                                              |
|       | D\[i\]:=1;                                                   |
|       |                                                              |
|       | TrU\[i\]:=0;                                                 |
|       |                                                              |
|       | TrD\[i\]:=0;                                                 |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | procedure Up;                                                |
|       |                                                              |
|       | var i,j: integer;                                            |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | for i:=1 to n do                                             |
|       |                                                              |
|       | for j:=1 to i-1 do                                           |
|       |                                                              |
|       | if (A\[i\]\<a\[j\]) then                                     |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | U\[i\]:=U\[j\]+1;                                            |
|       |                                                              |
|       | TrU\[i\]:=j;                                                 |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | Procedure Down;                                              |
|       |                                                              |
|       | var i,j :integer;                                            |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | for i:=n downto 1 do                                         |
|       |                                                              |
|       | for j:=n downto i+1 do                                       |
|       |                                                              |
|       | if (A\[i\]\<a\[j\]) then                                     |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | D\[i\]:=D\[j\]+1;                                            |
|       |                                                              |
|       | TrD\[i\]:=j;                                                 |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | procedure TimDiemGay;                                        |
|       |                                                              |
|       | var i: integer;                                              |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | KyLuc:=0;                                                    |
|       |                                                              |
|       | for i:=1 to n do                                             |
|       |                                                              |
|       | if (U\[i\]\>1) and (D\[i\]\>1) and                           |
|       |                                                              |
|       | (U\[i\]+D\[i\]-2\>KyLuc) then                                |
|       |                                                              |
|       | begin                                                        |
|       |                                                              |
|       | KyLuc:=U\[i\]+D\[i\]-2;                                      |
|       |                                                              |
|       | Vitri:=i;                                                    |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | end;                                                         |
|       |                                                              |
|       | BEGIN                                                        |
|       |                                                              |
|       | Nhap;                                                        |
|       |                                                              |
|       | ChuanBi;                                                     |
|       |                                                              |
|       | Up;                                                          |
|       |                                                              |
|       | Down;                                                        |
|       |                                                              |
|       | TimDiemGay;                                                  |
|       |                                                              |
|       | Xuat;                                                        |
|       |                                                              |
|       | END.                                                         |
+=======+==============================================================+
+-------+--------------------------------------------------------------+
