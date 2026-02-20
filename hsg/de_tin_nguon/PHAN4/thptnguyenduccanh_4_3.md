NGUYỄN VĂN THIẾT - THPT NGUYỄN ĐỨC CẢNH

> CAUHOI
>
> **Bài 3. Bạn bè**

Hai từ gọi là bạn bè nếu chúng được tạo nên bởi cùng một tập hợp kí tự
giống nhau: Ví dụ **S1='aabbbccccb'** và **S2='aabccccaaaaa'** là bạn bè
vì nó cùng được tạo bởi tập ký tự **{'a','b','c'}**. Cho ba cặp hai từ;
với mỗi cặp in 'YES' nếu hai từ trong cặp là bạn bè và in 'NO' nếu chúng
không phải là bạn bè.

**Dữ liệu:** Nhập từ tệp 6 xâu ký tự (mô tả 6 từ) lần lượt là S1, S2,
S3, S4, S5, S6; mỗi xâu trên một dòng chỉ gồm chữ cái tiếng Anh in
thường có độ dài không vượt quá 1000

**Kết quả:** In ra ba dòng:

-   Dòng 1: In 'YES' nếu S1 và S2 là bạn bè, ngược lại in 'NO'

-   Dòng 2: In 'YES' nếu S3 và S4 là bạn bè, ngược lại in 'NO'

-   Dòng 3: In 'YES' nếu S5 và S6 là bạn bè, ngược lại in 'NO'

**Ví dụ:**

+-----------------------------------------+----------------------------+
| **BAI3.INP**                            | **BAI3.OUT**               |
+=========================================+============================+
| aabbbccccb aabccccaaaaa                 | YES                        |
|                                         |                            |
| aabbbccccbcc                            | NO                         |
|                                         |                            |
| aadddccccaaa                            | YES                        |
|                                         |                            |
| xyzabc                                  |                            |
|                                         |                            |
| aaaaxxyxxzcccb                          |                            |
+-----------------------------------------+----------------------------+

*Ghi chú:* Bài được chấm qua 8 test, mỗi test đúng được 0,25 điểm:

-   6 test có độ dài của mỗi xâu ký tự không vượt quá 255

-   2 test có độ dài của mỗi xâu ký tự không vượt quá 1000

**Dap an**

**var s1, s2: string;**

**a, b: array\['a'..'z'\] of longint;**

**fi,fo:text;**

**function ok: boolean;**

**var i: char;**

**begin**

**for i:='a' to 'z' do if a\[i\]\<\>b\[i\] then exit(false);**

**exit(true);**

**end;**

**var i, t: longint;**

**c: char;**

**BEGIN**

**Assign(fi,\'bai3.inp\');reset(fi);**

**Assign(fo,\'bai3.out\');rewrite(fo);**

**for t:=1 to 3 do**

**begin**

**readln(fi,s1);**

**readln(fi,s2);**

**for c:='a' to 'z' do**

**begin a\[c\]:=0; b\[c\]:=0; end;**

**for i:=1 to length(s1) do inc(a\[s1\[i\]\]);**

**for i:=1 to length(s2) do inc(b\[s2\[i\]\]);**

**if ok then writeln(fo,\'YES\') else writeln(fo,\'NO\');**

**end;**

**close(fi);**

**close(fo);**

**END.**
