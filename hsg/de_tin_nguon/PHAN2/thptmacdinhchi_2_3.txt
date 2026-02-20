Nguyễn Thị Nhung - THPT Mạc Đĩnh Chi

**CAUHOI**

**Tỉa mảng (6 điểm)**

Cho dãy số nguyên a gồm n phần tử và dãy số nguyên b gồm m phần tử
(m\<=n). Các phần tử của dãy a và b có kiểu nguyên.

Yêu cầu: có thể xóa (gạch) khỏi dãy a một số phần tử sao cho các phần tử
còn lại (giữ nguyên trật tự ban đầu) chính là dãy b.

Dữ liệu: Vào cho trong tệp TIA.INP:

\- Dòng thứ nhất: Ghi giá trị hai số n, m tương ứng với số lượng phần tử
trong dãy a và dãy b (1\<=n, m \<=150).

\- Dòng thứ 2: Ghi giá trị các phần tử của dãy a.

\- Dòng thứ 3: Ghi giá trị các phần tử của dãy b.

Các phần tử trên cùng một dòng được ghi cách nhau duy nhất một dấu cách
trống.

Kết quả: Ghi ra tệp TIA.OUT: Có 2 trường hợp

\- Trường hợp 1 (thực hiện được): Dòng đầu ghi 'CO'; dòng thứ hai ghi vị
trí các phần tử bị xóa trong dãy a. Các vị trí này được ghi cách nhau
duy nhất bởi một dấu cách trống.

\- Trường hợp 2 (không thực hiện được): Ghi 'KHONG'

**Ví dụ**:

+-----------------------------------+-----------------------------------+
| **TIA.INP**                       | **TIA.OUT**                       |
+===================================+===================================+
| 6 4                               | CO                                |
|                                   |                                   |
| 6 15 8 75 8 9                     | 2 5                               |
|                                   |                                   |
| 6 8 75 9                          |                                   |
+-----------------------------------+-----------------------------------+
| 6 4                               | KHONG                             |
|                                   |                                   |
| 15 6 7 8 9 30                     |                                   |
|                                   |                                   |
| 6 8 9 7                           |                                   |
+-----------------------------------+-----------------------------------+

**TRALOI**

Var a,b,vt:array\[1..150\] of integer;

i,j,m,n,y,d,x:integer;

f:text;

Begin

assign(f,\'b1.inp\'); reset(f);

readln(f,m,n);

for i:= 1 to m do begin read(f,a\[i\]); write(a\[i\]:3); end;

writeln;

for j:= 1 to n do begin read(f,b\[j\]); write(b\[j\]:3); end;

writeln;

d:=0; j:=1; x:=0;

for i:= 1 to m do

WHILE j\<=n do begin if b\[i\] =a\[j\] then begin d:=d+1; j:=j+1; break;
end

else begin x:=x+1;

vt\[x\]:=j; write(j);

j:=j+1; end;

for i:= 1 to x do write(vt\[i\]:3);

readln

End.
