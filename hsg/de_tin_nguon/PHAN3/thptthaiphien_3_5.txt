**LÊ ĐÌNH LONG -- THPT THÁI PHIÊN**

**CÂU HỎI**

**[Bài 3:]{.underline} DÃY CON DÀI NHẤT**

Cho một dãy số nguyên gồm N phần tử a~1~ , a~2~, \..., a~N~ và một số
nguyên K. Giả thiết dãy cho luôn luôn tồn tại một dãy con có tổng các
phần tử chia hết cho k.

*Yờu cầu :* Hãy tìm dãy con có nhiều phần tử nhất có tổng các phần tử
chia hết cho k.

***Dữ liệu vào**:* Ghi trong file text, tên file là BAI3.INP gồm 2 dòng:

\- Dũng đầu ghi 2 số nguyên N và k ( 0\<N\< 1000; 0\< k \<1000)

\- Dũng tiếp theo ghi N số nguyên a~i~ (0\<a~i~ ≤ 5000, i =1,..,N)

***Dữ liệu ra** :* Ghi ra file text, tên file là BAI3.OUT, gồm:

\- Dòng đầu ghi độ dài dãy con tìm được.

\- Dòng tiếp theo ghi cỏc phần tử của dãy con.

\- Dòng cuối cùng ghi tổng cỏc phần tử của dãy con đó.

[Ví dụ]{.underline}:

+-------------------------------------+--------------------------------+
| **BAI3.INP**                        | **BAI3.OUT**                   |
+=====================================+================================+
| 10 17                               | 8                              |
|                                     |                                |
| 12 32 14 11 22 5 25 44 52 17        | 12 32 14 11 5 44 52 17         |
|                                     |                                |
|                                     | 187                            |
+-------------------------------------+--------------------------------+

**ĐÁP ÁN:**

Program Day_con_dai_nhat;

uses crt;

const

fi=\'BAI3.INP\';

fo=\'BAI3.OUT\';

maxN=1000;

maxK=1000;

var

a:array\[1..maxN\]of integer;

f:array\[0..maxN,0..maxN-1\]of integer;

n,k:integer;

procedure Doc_file;

var f:text;

i:integer;

begin

assign(f,fi); reset(f);

readln(f,N,k);

for i:=1 to N do read(f,a\[i\]);

close(f);

end;

Function tru(x,y:integer):integer;

var temp:integer;

begin

temp:=(x-y) mod k;

if temp\>=0 then tru:=temp

else tru:=temp+k;

end;

Procedure xuly;

var i,t:integer;

begin

f\[0,0\]:=0;

for i:=1 to k-1 do f\[0,i\]:=maxk;

for i:=1 to n do

for t:=0 to k-1 do

if f\[i-1,t\]\<f\[i-1,tru(t,a\[i\])\]+1 then

f\[i,t\]:=f\[i-1,t\]

else

f\[i,t\]:=f\[i-1,tru(t,a\[i\])\]+1;

end;

Procedure Print;

var i,t:integer;

s,sum:longint;

f2:text;

begin

assign(f2,fo);rewrite(f2);

s:=0;

for i:=1 to N do s:=s+a\[i\];

writeln(f2,n-f\[n,s mod k\]);

i:=n; t:=s mod k;

sum:=0;

for i:=n downto 1 do

if f\[i,t\]=f\[i-1,t\] then

begin

writeln(f2,\'a\[\',i,\'\]=\',a\[i\]);

sum:=sum+a\[i\];

end

else

t:=tru(t,a\[i\]);

writeln(f2,\'sum=\',sum);

close(f2);

end;

Begin

Doc_file;

xuly;

print;

End.
