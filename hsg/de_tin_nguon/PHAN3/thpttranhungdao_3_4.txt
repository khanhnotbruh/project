Phạm Thị Phượng -- THPT Trần Hưng Đạo

CAUHOI

> **Bài 1. Bạn bè 6 điểm**

Hai từ gọi là bạn bè nếu chúng được tạo nên bởi cùng một tập hợp kí tự
giống nhau: Ví dụ **S1='aabbbccccb'** và **S2='aabccccaaaaa'** là bạn bè
vì nó cùng được tạo bởi tập ký tự **{'a','b','c'}**. Cho ba cặp hai từ;
với mỗi cặp in 'YES' nếu hai từ trong cặp là bạn bè và in 'NO' nếu chúng
không phải là bạn bè.

**Dữ liệu:** Nhập từ bàn phím 6 xâu ký tự (mô tả 6 từ) lần lượt là S1,
S2, S3, S4, S5, S6; mỗi xâu trên một dòng chỉ gồm chữ cái tiếng Anh in
thường có độ dài không vượt quá 1000

**Kết quả:** In ra ba dòng:

-   Dòng 1: In 'YES' nếu S1 và S2 là bạn bè, ngược lại in 'NO'

-   Dòng 2: In 'YES' nếu S3 và S4 là bạn bè, ngược lại in 'NO'

-   Dòng 3: In 'YES' nếu S5 và S6 là bạn bè, ngược lại in 'NO'

**Ví dụ:**

+-----------------------------------------+----------------------------+
| **Dữ liệu vào**                         | **Dữ liệu ra**             |
+=========================================+============================+
| aabbbccccbaabccccaaaaa                  | YES                        |
|                                         |                            |
| aabbbccccbcc                            | NO                         |
|                                         |                            |
| aadddccccaaa                            | YES                        |
|                                         |                            |
| xyzabc                                  |                            |
|                                         |                            |
| aaaaxxyxxzcccb                          |                            |
+-----------------------------------------+----------------------------+

DAPAN

+------------------------------------------------+---------------------+
| > *Ghi chú:* Bài được chấm qua 2 test, mỗi     |                     |
| > test đúng được 3 điểm:                       |                     |
+================================================+=====================+
| > 1 test có độ dài của mỗi xâu ký tự không     | > 3 điểm            |
| > vượt quá 255                                 |                     |
+------------------------------------------------+---------------------+
| > 1 test có độ dài của mỗi xâu ký tự không     | > 3 điểm            |
| > vượt quá 1000                                |                     |
+------------------------------------------------+---------------------+

> Chương trình gợi ý
>
> var ch: char;
>
> a, b: array\['a'..'z'\] of longint;
>
> function ok: boolean;
>
> var i: char;
>
> begin
>
> for i:='a' to 'z' do if a\[i\]\<\>b\[i\] then exit(false);
>
> exit(true);
>
> end;
>
> var i, t: longint;
>
> c: char;
>
> BEGIN
>
> for t:=1 to 3 do
>
> begin
>
> for c:='a' to 'z' do
>
> begin a\[c\]:=0; b\[c\]:=0; end;
>
> while not seekeoln do
>
> begin
>
> read(c);
>
> inc(a\[c\]);
>
> end;
>
> readln;
>
> while not seekeoln do
>
> begin
>
> read(c);
>
> inc(b\[c\]);
>
> end;
>
> readln;
>
> if ok then writeln(\'YES\') else writeln(\'NO\');
>
> end;
>
> END.
