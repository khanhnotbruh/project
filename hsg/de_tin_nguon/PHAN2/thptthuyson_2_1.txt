Bùi Mạnh Tuấn -- THPT Thủy Sơn

CAU HOI

**Bài II: 6điểm.** **CHỮ SỐ**

Xét dãy số tự nhiên {a~n~} đuợc xây dựng theo quy tắc sau:

-   Cho trước số a~0~ là một số tự nhiên có tối đa 10 chữ số.

-   Số a~i~ (i\>0) là một số tự nhiên nhận được từ a­~i-1~ bằng cách viết
    thêm vào sau các chữ số của a~i-1~ chính a~i-1~ nhưng viết theo thứ
    tự ngược lại.

Ví dụ:

Với a~0~ = 123 thì a~1~ = 123321, a~2~ = 123321123321, a~3~ =
123321123321123321123321

Với hai số N và M cho trước, hãy tìm chữ số thứ M trong a~N~.

Dữ liệu cho trong file văn bản với tên là CHUSO.INP trong đó dòng đầu
chứa số a~0~, dòng thứ hai chứa hai số N và M.

Kết quả ghi ra file văn bản với tên là CHUSO.OUT. Trong trường hợp có
lời giải, file này sẽ chứa số tìm được, ngược lại file này chứa số -1.

  -----------------------------------------------------------------------
  CHUSO.OUT
  -----------------------------------------------------------------------
  1

  -----------------------------------------------------------------------

Ví dụ:

+-----------------------------------------------------------------------+
| CHUSO.INP                                                             |
+=======================================================================+
| 123                                                                   |
|                                                                       |
| 3 7                                                                   |
+-----------------------------------------------------------------------+

Giới hạn: 1![](media/image1.wmf) N ![](media/image2.wmf) 25,
1![](media/image2.wmf) M ![](media/image2.wmf) 1 000 000 000.

**DAP AN**

+-------+----------------------------------------------------+---------+
| Bài   | const                                              |         |
| IV    |                                                    |         |
|       | finp=\'chuso.inp\';                                |         |
|       |                                                    |         |
|       | fout=\'chuso.out\';                                |         |
|       |                                                    |         |
|       | var                                                |         |
|       |                                                    |         |
|       | a0: string;                                        |         |
|       |                                                    |         |
|       | n, m: longint;                                     |         |
|       |                                                    |         |
|       | function timchuso(n,m: longint): longint;          |         |
|       |                                                    |         |
|       | var l, i: longint;                                 |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | l:=length(a0);                                     |         |
|       |                                                    |         |
|       | if (m\<1) or (m\>l\*(1 shl n)) then begin          |         |
|       | timchuso:=-1; exit; end;                           |         |
|       |                                                    |         |
|       | i:=(m-1) mod l+1;                                  |         |
|       |                                                    |         |
|       | if ((m-1) div l) mod 2=1 then i:=l-i+1;            |         |
|       |                                                    |         |
|       | timchuso:=ord(a0\[i\])-ord(\'0\');                 |         |
|       |                                                    |         |
|       | end;                                               |         |
|       |                                                    |         |
|       | begin                                              |         |
|       |                                                    |         |
|       | assign(input, finp);                               |         |
|       |                                                    |         |
|       | reset(input);                                      |         |
|       |                                                    |         |
|       | assign(output, fout);                              |         |
|       |                                                    |         |
|       | rewrite(output);                                   |         |
|       |                                                    |         |
|       | readln(a0);                                        |         |
|       |                                                    |         |
|       | readln(n,m);                                       |         |
|       |                                                    |         |
|       | write(timchuso(n,m));                              |         |
|       |                                                    |         |
|       | close(input);                                      |         |
|       |                                                    |         |
|       | close(output);                                     |         |
|       |                                                    |         |
|       | end.                                               |         |
+=======+====================================================+=========+
+-------+----------------------------------------------------+---------+
