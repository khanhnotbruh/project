Vũ Xuân Hưng -- THPT Hùng Thắng CAHOI

Bài 1 - Điền khuyết xâu kí tự (3 điểm)

Cho trước 2 xâu ký tự a, b (chiều dài của mỗi xâu không quá 100).

Yêu cầu: Viết chương trình bổ sung một số ký tự vào a và một số ký tự
vào b để hai xâu a và b trở nên giống nhau (phân biệt chữ hoa, thường).
Tổng số kí tự bổ sung vào là ít nhất.

Input: File văn bản BAi1.INP cấu trúc như sau:

> \- Bao gồm một số dòng (là số chẵn, có thể lên đến 10.000 dòng).
>
> \- Mỗi dòng là một xâu kí tự (không quá 100 kí tự).
>
> Output: File văn bản BAI1.OUT cấu trúc như sau:
>
> \- Gồm một số dòng (là số dòng của file input chia 2)
>
> \- Dòng thứ i chứa xâu kí tự là kết quả của việc bổ sung 2 xâu tại
> dòng thứ i\*2-1 và i\*2 trên file input.
>
> Ví dụ:

+-----------------------+----------------------+----------------------+
| BAI1.INP              |                      | BAI1.OUT             |
+=======================+======================+======================+
| Abcde                 |                      | Abcdef               |
|                       |                      |                      |
| Abdf                  |                      |                      |
+-----------------------+----------------------+----------------------+

DAPAN

Program Dien_khuyet_xau;

uses crt;

var f1,f2: text;

s1,s2: string;

procedure xuli;

var i,j: byte;

k: integer;

s: string;

begin

k:=0;

while not eof(f1) do begin

readln(f1,s1);

readln(f1,s2);

k:=k+2;

if (length(s1)\>100) or (length(s2)\>100) or (k\>10000) then begin

rewrite(f2);

write(f2,\'NHAP LAI!\');

close(f2);

halt;

end;

s:=s1+s2;

for i:=length(s) downto 2 do

for j:=i-1 downto 1 do

if s\[i\]=s\[j\] then delete(s,i,1);

write(s1);

writeln;

write(s2);

writeln;

write(s);

writeln;

write(f2,s);

writeln(f2);

end;

close(f1);

close(f2);

end;

Begin

clrscr;

assign(f1,\'D:\\Bai1.INP\');

reset(f1);

assign(f2,\'D:\\Bai1.OUT\');

rewrite(f2);

xuli;

readln

End.
