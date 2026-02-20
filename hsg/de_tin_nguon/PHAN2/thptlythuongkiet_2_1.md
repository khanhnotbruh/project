Lê Hữu Huy-THPT Lý Thường Kiệt

**CAUHOI**

**Bài 2(6 điểm):** Cho một xâu số có độ dài không quá 255 ký tự.

> **Yêu cầu**: a) Tìm chữ số lớn nhất trong xâu;
>
> b\) Tính tổng các chữ số trong xâu.
>
> **Dữ liệu vào:** Cho trong tệp BAI2.INP gồm một dòng chứa nội dung xâu
> S.
>
> **Dữ liệu ra:** Ghi ra tệp BAI2.OUT gồm:

-   Dòng 1: Ghi chữ số lớn nhất tìm được;

-   Dòng 2: Ghi tổng các chữ số trong xâu.

> **Ví dụ:**

+-----------------------------------+----------------------------------+
| **BAI2.INP**                      | **BAI2.OUT**                     |
+===================================+==================================+
| 12345678910                       | 9                                |
|                                   |                                  |
|                                   | 46                               |
+-----------------------------------+----------------------------------+

> **DAPAN:**
>
> Uses crt;
>
> Const finp=\'Bai2.inp\';
>
> fout=\'Bai2.out\';
>
> Var f:text;
>
> S:string;
>
> i,n:Longint;
>
> Procedure Docfile;
>
> Begin
>
> Assign(f,finp);
>
> Reset(f);
>
> Readln(f,s);
>
> Close(f);
>
> End;
>
> Procedure Ghifile;
>
> Begin
>
> Assign(f,fout);
>
> Rewrite(f);
>
> End;
>
> Procedure Xuli;
>
> Var m,code,tg:Longint;
>
> Max:String;
>
> Begin
>
> tg:=0;
>
> For i:=1 to length(s) do
>
> Begin
>
> Val(S\[i\],m,code);
>
> tg:=tg+m;
>
> End;
>
> Max:=S\[1\];
>
> For i:=1 to length(s) do
>
> If Max\<s\[i\] then Max:=s\[i\];
>
> Ghifile;
>
> Writeln(f,Max);
>
> Writeln(f,tg);
>
> Close(f);
>
> End;
>
> Begin
>
> Docfile;
>
> Xuli;
>
> End.
