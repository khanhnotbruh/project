NGUYỄN THỊ TÂM \_ THPT Phạm Ngũ Lão

**CAUHOI**

**Bài 2: TỔNG CÁC CHỮ SỐ (6đ)**

Cho một số tự nhiên A có N chữ số (N \<= 200). Hãy tính tổng các chữ số
của số a và cho biết chữ số lớn nhất là chữ số mấy và ở những vị trí nào
tính từ phải qua trái.

**Dữ liệu vào**: Vào từ tệp văn bản CHUSO.OUT, là một số tự nhiên A

**Kết quả ra**: Ghi ra tệp văn bản CHUSO. OUT có cấu trúc như sau:

-   Dòng thứ nhất ghi tổng các chữ số

-   Dòng thứ 2 ghi chữ số lớn nhất

-   Dòng thứ 3 ghi các vị trí xuất hiện của chữ số lớn nhất

> (Các số trên cùng một dòng ghi cách nhau một dấu cách trống)

**Ví dụ:**

+------------------------------------------+---------------------------+
| CHUSO.INP                                | CHUSO.OUT                 |
+==========================================+===========================+
| 43210874254678231                        | 67                        |
|                                          |                           |
|                                          | 8                         |
|                                          |                           |
|                                          | 4 12                      |
+------------------------------------------+---------------------------+

**DAPAN**

var s:ansistring;

i,sum:longint;

max:char;

begin

assign(input,\'chuso.inp\');reset(input);

assign(output,\'chuso.out\');rewrite(output);

readln(s);max:=\'0\';sum:=0;

for i:=1 to length(s) do

begin

inc(sum,ord(s\[i\])-48);

if s\[i\]\>max then max:=s\[i\];

end;

writeln(sum);

writeln(max);

FOR I:=LENGTH(S) DOWNTO 1 DO IF S\[I\]=MAX THEN write(LENGTH(S)-I+1,\'
\');

end.
