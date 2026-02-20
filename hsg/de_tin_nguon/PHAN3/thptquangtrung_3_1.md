Trần Thị Ngọc Ánh -- THPT Quang Trung

CÂU HỎI

Cho một tập tin văn bản có n dòng ( 3 \<= n \<= 3000), mỗi dòng là một
chuỗi s tối đa 255 ký tự, các ký tự s\[i\] thuộc \['a'..'z'\] với
1\<=i\<=length(s). Trong đó chỉ có duy nhất 1 chuỗi s có số lần xuất
hiện là 1 số lẻ, các chuỗi khác có số lần xuất hiện là 1 số chẵn. Hãy
tìm chuỗi s (có số lần xuất hiện là 1 số lẻ) đó.

Ví dụ:

+-----------------------------------+-----------------------------------+
| Bai1.inp                          | Bai1.out                          |
+===================================+===================================+
| 7                                 | Rach gia                          |
|                                   |                                   |
| Ha tien                           |                                   |
|                                   |                                   |
| Phu quoc                          |                                   |
|                                   |                                   |
| Rach gia                          |                                   |
|                                   |                                   |
| Chau thanh                        |                                   |
|                                   |                                   |
| Ha tien                           |                                   |
|                                   |                                   |
| Chau thanh                        |                                   |
|                                   |                                   |
| Phu quoc                          |                                   |
+-----------------------------------+-----------------------------------+

ĐÁP ÁN

var fi,fo:text;

a,b:array\[1..3000\] of string;

d:array\[1..3000\] of word;

i,n,j,k:word;

res:string;

check:boolean;

begin

assign(fi,\'bai1.inp\');reset(fi);

assign(fo,\'bai1.out\');rewrite(fo);

readln(fi,n);

for i:=1 to n do readln(fi,a\[i\]);

k:=0;

fillchar(d,sizeof(d),0);

for i:=1 to n do begin

check:=true;

for j:=1 to k do

if a\[i\]=b\[j\] then begin

inc(d\[j\]);

check:=false;

break;

end;

if check then begin

inc(k);

b\[k\]:=a\[i\];

d\[k\]:=1;

end;

end;

for i:=1 to k do

if d\[i\] mod 2 \<\> 0 then begin

res:=b\[i\];

break;

end;

write(fo,res);

close(fi);close(fo);

end.
