Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Sắp xếp xâu (6 điểm)**

Mỗi xâu kí tự St được lấy từ tập các ký tự 'a'\...'z', '0'\...'9' và có
độ dài tối đa là 255 kí tự. Cho N xâu kí tự St (0 \< N ≤ 200).

***Yêu cầu:*** Thực hiện sắp xếp N xâu kí tự St theo thứ thự không giảm
của số lượng các kí tự chữ số có trong mỗi xâu St.

***Dữ liệu vào:*** Cho trong file văn bản SAPXEP.INP có cấu trúc như
sau:

*- Dòng 1:* Ghi số nguyên N.

*- N dòng tiếp theo:* Mỗi dòng ghi một xâu St.

***Dữ liệu ra:*** Ghi ra file văn bản SAPXEP.OUT theo cấu trúc như sau:

\- Ghi N dòng: Mỗi dòng ghi một xâu St, các xâu được ghi theo thứ tự đã
sắp xếp.

***Ví dụ:***

+-----------------------------------+-----------------------------------+
| SAPXEP.INP                        | SAPXEP.OUT                        |
+===================================+===================================+
| 3                                 | cb1                               |
|                                   |                                   |
| abc1x2y3z                         | 1cd7hd                            |
|                                   |                                   |
| cb1                               | abc1x2y3z                         |
|                                   |                                   |
| 1cd7hd                            |                                   |
+-----------------------------------+-----------------------------------+

**TRALOI**

Var f1,f2:text;

s,tg1:string;

arr:array\[1..1000000\]of longint;

ms:array\[1..1000000\]of string;

i,j,n,tg,dem:longint;

Begin

assign(f1,\'SAPXEP.inp\'); reset(f1);

assign(f2,\'SAPXEP.out\'); rewrite(f2);

readln(f1,n);

for i:=1 to n do

begin

readln(f1,s);

ms\[i\]:=s;

dem:=0;

for j:=1 to length(s) do

if s\[j\] in \[\'0\'..\'9\'\] then inc(dem);

arr\[i\]:=dem;

end;

close(f1);

for i:=1 to n-1 do

for j:=i to n do

if arr\[j\]\<arr\[i\] then

begin

tg:=arr\[i\]; tg1:=ms\[i\];

arr\[i\]:=arr\[j\];ms\[i\]:=ms\[j\];

arr\[j\]:=tg;ms\[j\]:=tg1;

end; rewrite(f2);

for i:=1 to n do writeln(f2,ms\[i\]);

close(f2);

End.
