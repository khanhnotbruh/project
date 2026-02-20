PHẠM THỊ NHÂT - THPT NGUYỄN ĐỨC CẢNH

CAUHOI

Thành phố tổ chức cuộc thi hội khoẻ phù đổng. Có N ( 0\<N\<1000 )đội thi
tham dự. Mỗi đội có nhiều thí sinh tham gia dự thi. Kết quả thành tích
của mỗi đội được ban tổ chức tổng hợp theo các loại huy chương vàng là
A, huy chương bạc là B, huy chương đồng là C.

**Yêu cầu** : Tính tổng điểm của mỗi đội và đưa ra đội về nhất. Biết
rằng huy chương vàng có điểm là 5, huy chương bạc có điểm là 3 và huy
chương đồng có điểm là 1.

**Dữ liệu** : Vào từ file văn bản BAI2.INP gồm có:

> \- Dòng đầu tiên chứa N là số lượng đội tham dự.
>
> \- N dòng tiếp theo ghi kết quả huy chương của mỗi đội.

**Kết quả** : Ghi ra tệp văn bản BAI2.OUT :

> \- Dòng 1 ghi kết quả tổng điểm của mỗi đội cách nhau một dấu cách.
>
> \- Dòng 2 ghi ra đội xếp hạng nhất.

**Ví dụ :**

+----------------------+-----------------------+----------------------+
| **BAI2.INP**         | **BAI2.OUT**          | **GIẢI THÍCH**       |
+======================+=======================+======================+
| 3                    | 14 13 15              | Dòng 1 là tổng điểm  |
|                      |                       | của 3 đội lần lượt   |
| AABC                 | 3                     | là 14 13 15.         |
|                      |                       |                      |
| ABBCC                |                       | Dòng 2 là đội 3 có   |
|                      |                       | tổng số điểm thi cao |
| AAA                  |                       | nhất.                |
+----------------------+-----------------------+----------------------+

DAPAN

program bai2;

const fi=\'DE2_02.inp\';

fo=\'DE2_02.out\';

var f1,f2:text;

n,i, max, csmax:integer;

s:string;

a:array\[1..1000\]of integer;

Function diem(st:string): integer;

var t,j:longint;

begin

t:=0;

for j:=1 to length(st) do

if st\[j\] =\'A\' then t:=t+5

else if st\[j\]=\'B\' then t:= t+3

else t:=t+1;

diem:=t;

end;

BEGIN

assign(f1,fi); assign(f2,fo);

reset(f1); rewrite(f2);

readln(f1,n);

for i:= 1 to n do

begin

readln(f1,s); {nhap xau s}

a\[i\]:=diem(s); {tinh diem huy chuong cua xau s va cho vao mang a}

write (f2,a\[i\]:4); { viet mang a}

end;

writeln(f2); {= sap xep mang a}

max:=a\[1\];csmax:=1;

for i:= 2 to n do

if a\[i\]\> max then begin

max:=a\[i\]; csmax:=i;

end;

write (f2, csmax);

close(f1); close(f2);

END.
