**Lê Văn Quỳnh -- THPT Tiên Lãng**

**CAUHOI**

**Bài 2** Cho dãy số nguyên dương A gồm N phần tử (0\<N\<=100,
0\<Ai\<10000, i=1..N).\
Hãy tìm tất cả các số ngyên tố khác nhau là phần tử của dãy **A.\
Dữ liệu đầu vào** từ file văn bản **BAI1.INP** gồm:\
• Dòng đầu ghi số N(N\<=100) là số phần tử của dãy.\
• Dòng thứ i trong số N dòng tiếp theo ghi giá trị của phần tử Ai.\
**Kết quả** ghi vào file văn bản **BAI1.OUT** các số nguyên tố tìm được
theo thứ tự tăng dần mỗi\
số ghi trên một dòng. Nếu dãy A không có phần tử nào là số nguyên tố thì
ghi ra số 0.\
**Ví dụ:**

  -----------------------------------------------------------------------
  **BAI1.INP**                      **BAI1.OUT**
  --------------------------------- -------------------------------------
  4                                 2

  3                                 3

  2                                 

  4                                 

  2                                 
  -----------------------------------------------------------------------

**DAPAN**

var f1,f2:text;

a:array\[1..100\] of longint;

b:array\[1..10000\] of byte;

n,i,j,x,max:longint;

function snt(k:longint):boolean;

var can,i:longint;

begin

if (k=2) or(k=3) or( k=5) or (k=7) then exit(true)

else if (k\<2)or(k mod 2=0) or(k mod 3 =0)or (k mod 7 =0) or (k mod 5
=0) then

exit(false)

else

begin

can:=trunc(sqrt(k));

i:=5;

while i\<=can do if (k mod i=0)or(k mod (i+2)= 0) then exit(false)

else i:=i+6;

end;

exit(true)

end;

begin

assign(f1,\'bai1.inp\');reset(f1);

assign(f2,\'bai1.out\');rewrite(f2);

readln(f1,n); max:=2;

for i:=1 to n do

begin

readln(f1,a\[i\]);

if snt(a\[i\]) and(b\[a\[i\]\]=0) then

begin

b\[a\[i\]\]:=1;

if max \<a\[i\] then max:=a\[i\];

end;

end;

for i:=1 to max do

if b\[i\]= 1 then Writeln(f2,i);

close(f2);

end.
