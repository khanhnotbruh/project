> **Nguyễn Văn Khoa -- THPT Lý Thường Kiệt**
>
> CAUHOI
>
> Cho tệp Input.dat chứa dãy các số nguyên được phân cách với nhau bởi
> một dấu cách trống, hãy viết chương trình đọc từ tệp các số nguyên đó
> và kiểm tra xem các số nguyên đó có tạo thành một cấp số cộng hay
> không.
>
> **Qui tắc:** Giả sử dãy các số nguyên là: A~1~ , A~2~ , ... A~N~ , ta
> gọi **d** là công sai và
>
> A~2~ - A~1~ = d; và A~3~ -- A~2~ = d và ... A~N~ -- A~N-1~ = d
>
> *Thì dãy số trên lập thành một cấp số cộng, nếu không thì dãy số trên
> không lập thành một cấp số cộng.*
>
> **Yêu cầu**

1.  ***Tệp Input.dat sẽ có 02 dòng:***

    a.  *Dòng 1: Là một số nguyên M lưu tổng các số nguyên.*

    b.  *Dòng 2: Là dãy các số nguyên được phân cách với nhau bởi dấu
        cách trống.*

2.  ***Tệp Output.dat sẽ có 03 dòng:***

    a.  *Dòng 1: Là một số nguyên M lưu tổng các số nguyên*

    b.  *Dòng 2: Là dãy các số nguyên được phân cách với nhau bởi dấu
        cách trống.*

    c.  *Dòng 3: Là 'Cap so cong voi cong sai **d**' hoặc 'Khong la cap
        so cong'.*

**Ví dụ 1:**

+--------------------------------+-------------------------------------+
| > **Input.dat**                | > **Output.dat**                    |
+--------------------------------+-------------------------------------+
| > 5                            | > 5                                 |
| >                              | >                                   |
| > 1 3 5 7 9                    | > 1 3 5 7 9                         |
|                                | >                                   |
|                                | > La cap so cong voi cong sai: 2    |
+--------------------------------+-------------------------------------+

**Ví dụ 2:**

+--------------------------------+-------------------------------------+
| > **Input.dat**                | > **Output.dat**                    |
+--------------------------------+-------------------------------------+
| > 7                            | > 7                                 |
| >                              | >                                   |
| > 1 2 3 5 5 7 9                | > 1 2 3 5 5 7 9                     |
|                                | >                                   |
|                                | > Khong la cap so cong              |
+--------------------------------+-------------------------------------+

**Ví dụ 3:**

+--------------------------------+-------------------------------------+
| > **Input.dat**                | > **Output.dat**                    |
+--------------------------------+-------------------------------------+
| > 5                            | > 7                                 |
| >                              | >                                   |
| > -1 5 11 17 23                | > -1 5 11 17 23                     |
|                                | >                                   |
|                                | > la cap so cong                    |
+--------------------------------+-------------------------------------+

**Ví dụ 4:**

+--------------------------------+-------------------------------------+
| > **Input.dat**                | > **Output.dat**                    |
+--------------------------------+-------------------------------------+
| > 10                           | > 10                                |
| >                              | >                                   |
| > 2 4 6 8 10 12 14 16 18 20    | > 2 4 6 8 10 12 14 16 18 20         |
|                                |                                     |
|                                | la cap so cong                      |
+--------------------------------+-------------------------------------+

**Ví dụ 5:**

+--------------------------------+-------------------------------------+
| > **Input.dat**                | > **Output.dat**                    |
+--------------------------------+-------------------------------------+
| > 10                           | > 10                                |
| >                              | >                                   |
| > 2 4 6 8 11 12 14 16 18 20    | > 2 4 6 8 11 12 14 16 18 20         |
|                                |                                     |
|                                | Khong la cap so cong                |
+--------------------------------+-------------------------------------+

**Ví dụ 6:**

+--------------------------------+-------------------------------------+
| > **Input.dat**                | > **Output.dat**                    |
+--------------------------------+-------------------------------------+
| > 9                            | > 9                                 |
| >                              |                                     |
| > -2 4 12 18 24 30 36 42 46    | -2 4 12 18 24 30 36 42 46           |
|                                |                                     |
|                                | la cap so cong                      |
+--------------------------------+-------------------------------------+

DAPAN

Program bai2;

Uses Crt;

Var F:Text;

A: Array\[1..100\] of byte;

M, X:Byte;

{ Doc tep}

Procedure Readfile;

Var I: Byte;

Begin

I:=0;

Assign(F, \'input,dat\');

Reset(F);

Readln(F,M);

While not(eof(f)) do

Begin

I:=I+1;

Read(F, A\[i\]);

End;

Close(F);

End;

{Ma hoa}

Procedure Kiemtra;

Var i: Byte;

Kt: Integer;

Begin

X:=0;

Kt:=A\[2\]-A\[1\];

For i:=2 to M do

If Kt\<\> A\[i\]-A\[i+1\] then X:=1;

End;

{Ghi tep}

Procedure Writefile;

Var I: Byte;

Begin

Assign(F,\'output.txt\');

Rewrite(F);

Writeln(F,M);

For I:=1 to M do

Write(F, A\[i\]);

Writeln;

If X=0 then Write(f,\'Day so la cap so cong\')

Else Write(f,\' Day so khong la cap so cong\');

Close(f);

End;

{ Chuong trinh chinh}

Begin

Readfile;

kiemtra;

Writefile;

End.
