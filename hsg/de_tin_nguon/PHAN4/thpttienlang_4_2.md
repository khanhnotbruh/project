**Đỗ Trọng Trung -- THPT Tiên Lãng**

**CAUHOI**

**Bài 4**. ***Đặt tên chương trình nguồn là BAI4.PAS***

Cho dãy N số nguyên (1 ≤ N ≤ 10 000) A~1~, A~2~, \..., A~N~. Hãy lập
trình

\* Đọc tệp văn bản KQ.INP:

\- Dòng đầu tiên chứa hai số nguyên N, K ≠ 1

\- Các dòng sau; chứa các số nguyên A~i~, các số cách nhau ít nhất một
dấu cách hoặc một nhóm dấu xuống dòng .

\* Tìm đoạn dài nhất các phần tử liên tiếp nhau cùng chia hết cho một số
nguyên K. Đưa ra tệp văn bản KQ.OUT một số nguyên xác định độ dài đoạn
lớn nhất tìm được.

Ví dụ

  -----------------------------------------------------------------------
  KQ.OUT
  -----------------------------------------------------------------------
  2

  -----------------------------------------------------------------------

+-----------------------------------------------------------------------+
| KQ.INP                                                                |
+=======================================================================+
| 3 5                                                                   |
|                                                                       |
| 6 10 15                                                               |
+-----------------------------------------------------------------------+

**DAPAN**

**Bài 4**

Program Bai4;

Var f : text ;

I, a, n, k, s, max : integer ;

Change : boolean;

Begin

Assign (f, ' KQ.INP');

Reset (f) ;

Readln(f, n, k);

Change : = false

S:=0 ;

Max: =0 ;

For I : =1 to n do

Begin

Read (f, a);

If a mod k = 0 then

If change then inc(s)

Else

Begin

Change := true ;

S: =1 ;

End

Else

If change then

Begin

Change : = false ;

If s\> max then max : = s ;

S: = 0 ;

End;

E nd;

Close (f) ;

Assign ( f , 'KQ. OUT );

Rewrite (f) ;

Writeln (f, max )

Close (f) ;

END.
