Lê Hữu Huy-THPT Lý Thường Kiệt

**CAUHOI**

**Bài 4**. **Tìm dãy con không giảm dài nhất**. (8 điểm)

Cho một dãy N số nguyên a~1,~ a~2~, a~3~, \....a~n~.
![](media/image1.wmf)

> **Yêu cầu**: Hãy tìm dãy con không giảm dài nhất. (Dãy con được gọi là
> không giảm khi thoả mãn điều kiện a~i~ ≤ a~i+1~ ≤ ...≤ a~j~ với 1 ≤ i
> ≤ j ≤ n ).
>
> Số nguyên d là độ dài của dãy con không giảm tìm được (quy ước nếu
> không tìm được thì ghi d=0).
>
> **Dữ liệu vào**: Cho trong tệp BAI4.INP
>
> \- Dòng đầu tiên chứa số nguyên dương N (N\<10^6^).
>
> \- Dòng thứ 2 chứa số ai ![](media/image1.wmf)
>
> **Kết quả:** Ghi ra tệp BAI4.OUT
>
> \- Dòng đầu tiên ghi vị trí của phần tử đầu tiên của dãy con tìm được.
>
> \- Dòng thứ hai ghi vị trí của phần tử cuối cùng của dãy con tìm được.
>
> \- Dòng thứ ba đưa ra được dãy con thỏa mãm điều kiện.
>
> **Ví dụ:**

+------------------------------------+---------------------------------+
| > **BAI4.INP**                     | > **BAI4.OUT**                  |
+====================================+=================================+
| > 8                                | > 3\                            |
| >                                  | > 6                             |
| > 2, 2017, 6, 6,15, 16,3, 21       | >                               |
|                                    | > 6, 6, 15, 16                  |
+------------------------------------+---------------------------------+

**DAPAN**

+-----------------------------------------------------------------------+
| const max=10000;\                                                     |
| var A:array\[1..max\] of longint;\                                    |
| D:array\[0..max\] of integer;\                                        |
| n,m:integer;\                                                         |
| f: text;                                                              |
|                                                                       |
| procedure nhap;\                                                      |
| var i : integer;\                                                     |
| begin\                                                                |
| assign(f,\'BAI4.INP\');\                                              |
| reset(f);\                                                            |
| readln(f,n);\                                                         |
| for i := 1 to n do readln(f,a\[i\]);\                                 |
| close(f);\                                                            |
| fillchar(d,sizeof(d),0);\                                             |
| end;                                                                  |
+=======================================================================+
| function chon(s: integer): boolean;\                                  |
| var x : longint;\                                                     |
| begin\                                                                |
| s:=2\*s;\                                                             |
| x:= trunc(sqrt(s));\                                                  |
| chon:= sqr(x)+x = s;\                                                 |
| end;                                                                  |
+-----------------------------------------------------------------------+
| procedure tinh;\                                                      |
| var i: integer;\                                                      |
| begin\                                                                |
| if chon(a\[1\]) then d\[1\]:=1\                                       |
| else\                                                                 |
| d\[1\]:=0; m:=d\[1\];\                                                |
| for i:= 2 to n do\                                                    |
| if chon(a\[i\]) then                                                  |
|                                                                       |
| begin\                                                                |
| if a\[i\]\>=a\[i-1\] then\                                            |
| d\[i\]:=d\[i-1\]+1\                                                   |
| else\                                                                 |
| d\[i\]:=1;\                                                           |
| if d\[i\]\>m then m:=d\[i\];\                                         |
| end\                                                                  |
| else\                                                                 |
| d\[i\]:=0;\                                                           |
| end;                                                                  |
+-----------------------------------------------------------------------+
| procedure xuat;\                                                      |
| begin\                                                                |
| assign(f,\'BAI4.OUT\');\                                              |
| rewrite(f);\                                                          |
| write(f,m);\                                                          |
| close(f);\                                                            |
| end;                                                                  |
+-----------------------------------------------------------------------+
| BEGIN\                                                                |
| clrscr;\                                                              |
| Nhap;\                                                                |
| tinh;\                                                                |
| xuat;\                                                                |
| END.                                                                  |
+-----------------------------------------------------------------------+
