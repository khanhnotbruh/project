**Bùi Thị Huệ_THPT Phạm Ngũ Lão**

> **CAUHOI**

**[Bài 1]{.underline}: Tính tổng các ước nguyên tố** (6 điểm) **(Đặt tên
chương trình nguồn BAI_1.PAS)**

**Viết chương trình tính tổng các ước nguyên tố của số nguyên N**

-   Dữ liệu vào: tệp BAI1.INP chứa một số nguyên N có giá trị ≤ 10^9^

-   Dữ liệu ra: đưa ra tệp văn bản BAI1.OUT ghi như sau:

> Dòng đầu ghi các ước nguyên tố của số N (các số cách nhau một dấu
> cách)
>
> Dòng sau ghi một số nguyên là tổng của các ước đó

-   Ví dụ:

+---------------------+-------------------------+---------------------+
| BAI1.INP            | BAI1.OUT                | Giải tích           |
+=====================+=========================+=====================+
| 10                  | 2 5                     | Số 10 có hai ước là |
|                     |                         | số nguyên tố.       |
|                     | 7                       |                     |
|                     |                         | Tổng 2 ước nguyên   |
|                     |                         | tố là 7             |
+---------------------+-------------------------+---------------------+

**ĐÁP ÁN**

**Program Tong_cac_uoc_nguyen_to;**

**Uses Crt;**

**Var n,i,j,d,tong: longint;**

**f,g:Text;**

**BEGIN**

**Clrscr;**

**assign(f,\'TongUNT.inp\');**

**assign(g,\'TongUNT.out\');**

**reset(f); rewrite(g);**

**Readln(f,n);**

**Write(\'cac uoc nguyen to cua \',n,\' la:\');**

**for i:= 2 to n do**

**if n mod i=0 then**

**Begin**

**J:=2;**

**While (j\<=sqrt(i)) and (i mod j \<\>0) do**

**j:=j+1;**

**if j\>sqrt(i) then**

**begin**

**tong:=tong+i;**

**write(i,\' \');**

**Write(g,i,\' \');**

**end;**

**end;**

**Writeln;**

**Write(\'Tong cac uoc nguyen to cua \',n,\' la:\',tong);**

**Writeln(g,\' \');**

**Write(g,tong);**

**Close(f); Close(g);**

**Readln;**

**END.**
