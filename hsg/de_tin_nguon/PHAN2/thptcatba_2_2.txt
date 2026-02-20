Trần Thị Chi -- THPT Cát Bà

CAUHOI

***Bài 2(6,0 điểm) - Điền số .***

Trong một lưới ô vuông kích thước 9 x 9 cần điền các số từ 1 đến 9 sao
cho trong mỗi dòng, mỗi cột và mỗi lưới ô vuông con kích thước 3 x 3 đều
có mặt tất cả các số từ 1 đến 9 (lưới ô vuông được chia thành 9 lưới ô
vuông kề nhau mỗi lưới ô vuông có kích thước 3x3).

Yêu cầu: Cho trước một lưới ô vuông trong đó đã có một số ô đã được điền
số, cần xác định có thể điền tiếp các số vào các ô còn lại để thu được
bảng số có tính chất đã nêu hay không?

**Dữ liệu**: Vào từ file **BAI2.IN**P gồm 9 dòng mô tả bảng số đã điền
bộ phận, mỗi dòng gồm 9 ký tự, ký tự \'.\' để chỉ ra ô chưa được điền
số.

**Kết quả:** Ghi ra file văn bản **BAI2.OUT** bảng số tìm được gồm 9
dòng mỗi dòng 9 ký tự hoặc thông báo \'IMPOSSIBLE\' (chữ hoa, không có
dấu nháy) nếu không tìm được lời giải.

Ví dụ:

+---------------------------+------------------------------------------+
| **BAI2.INP**              | **BA2.OUT**                              |
+===========================+==========================================+
| .....2.3.                 | 185742936                                |
|                           |                                          |
| 374..6.2.                 | 374916528                                |
|                           |                                          |
| \.....8.1.                | 692358714                                |
|                           |                                          |
| 258\...\...               | 258493167                                |
|                           |                                          |
| \...\...\...              | 439671852                                |
|                           |                                          |
| \...\...493               | 716285493                                |
|                           |                                          |
| .4.1\.....                | 543167289                                |
|                           |                                          |
| .2.8..675                 | 921834675                                |
|                           |                                          |
| .6.5\.....                | 867529341                                |
+---------------------------+------------------------------------------+

DAPAN

**I. Phần chương trình nguồn**

Bài 2:

{\$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+}

{\$M 65000,0,655360}

uses crt;

const

tfi = \'BAI2.INP\';

tfo = \'BAI2.OUT\';

var

fi,fo : text;

x : array\[1..9,1..9\] of byte;

Good : boolean;

sol : array\[1..9,1..9\] of integer;

cn : array\[1..9,1..9,1..9\] of byte;

procedure Docdl;

var i,j: integer;

ch: char;

begin

fillchar(x,sizeof(x),0);

for i:=1 to 9 do

begin

for j:=1 to 9 do

begin

read(fi,ch);

if ch\<\>\'.\' then x\[i,j\]:=ord(ch)-48;

end;

readln(fi);

end;

end;

procedure Dat(i,j,k: integer; var ok: boolean);

var u,v,id,ic,jd,jc: integer;

begin

ok:=false;

for u:=1 to 9 do

begin

if (u\<\>i) and (x\[u,j\]=k) then exit;

if cn\[u,j,k\]=0 then

begin

sol\[u,j\]:=sol\[u,j\]-1;

cn\[u,j,k\]:=100;

if (x\[u,j\]=0) and (sol\[u,j\]=0) then exit;

end;

end;

for v:=1 to 9 do

begin

if (v\<\>j) and (x\[i,v\]=k) then exit;

if cn\[i,v,k\]=0 then

begin

sol\[i,v\]:=sol\[i,v\]-1;

cn\[i,v,k\]:=100;

if (x\[i,v\]=0) and (sol\[i,v\]=0) then exit;

end;

end;

id:=(i-1) div 3\*3+1; ic:=id+2;

jd:=(j-1) div 3\*3+1; jc:=jd+2;

for u:=id to ic do

for v:=jd to jc do

begin

if ((u\<\>i) or (v\<\>j)) and (x\[u,v\]=k) then exit;

if cn\[u,v,k\]=0 then

begin

sol\[u,v\]:=sol\[u,v\]-1;

cn\[u,v,k\]:=100;

if (x\[u,v\]=0) and (sol\[u,v\]=0) then exit;

end;

end;

ok:=true;

end;

procedure Chuanbi;

var i,j,k: integer;

ok: boolean;

begin

Good:=false;

for i:=1 to 9 do

for j:=1 to 9 do sol\[i,j\]:=9;

fillchar(cn,sizeof(cn),0);

for i:=1 to 9 do

for j:=1 to 9 do

if x\[i,j\]\>0 then

begin

k:=x\[i,j\];

Dat(i,j,k,ok);

if not ok then exit;

end;

for i:=1 to 9 do

for j:=1 to 9 do

if (x\[i,j\]=0) and (sol\[i,j\]=1) then

for k:=1 to 9 do

if cn\[i,j,k\]=0 then

begin

x\[i,j\]:=k;

Dat(i,j,k,ok);

if not ok then exit;

end;

Good:=true;

end;

procedure Thu(u,v: integer);

var k,i,j,ud,uc,vd,vc: integer;

tiep: boolean;

begin

if u=10 then

begin

Good:=true;

exit;

end;

if v=10 then

begin

Thu(u+1,1);

exit;

end;

if x\[u,v\]\>0 then

begin

Thu(u,v+1);

exit;

end;

for k:=1 to 9 do

if cn\[u,v,k\]=0 then

begin

x\[u,v\]:=k;

(\* Dat trang thai \*)

tiep:=true;

for i:=u+1 to 9 do

if (x\[i,v\]=0) and (cn\[i,v,k\]=0) then

begin

cn\[i,v,k\]:=(u-1)\*9+v;

sol\[i,v\]:=sol\[i,v\]-1;

tiep:=(sol\[i,v\]\>0);

end;

for j:=v+1 to 9 do

if (x\[u,j\]=0) and (cn\[u,j,k\]=0) then

begin

cn\[u,j,k\]:=(u-1)\*9+v;

sol\[u,j\]:=sol\[u,j\]-1;

tiep:=(sol\[u,j\]\>0);

end;

ud:=(u-1) div 3\*3+1; uc:=ud+2;

vd:=(v-1) div 3\*3+1; vc:=vd+2;

for j:=v+1 to vc do

if (x\[u,j\]=0) and (cn\[u,j,k\]=0) then

begin

cn\[u,j,k\]:=(u-1)\*9+v;

sol\[u,j\]:=sol\[u,j\]-1;

tiep:=(sol\[u,j\]\>0);

end;

for i:=u+1 to uc do

for j:=vd to vc do

if (x\[i,j\]=0) and (cn\[i,j,k\]=0) then

begin

cn\[i,j,k\]:=(u-1)\*9+v;

sol\[i,j\]:=sol\[i,j\]-1;

tiep:=sol\[i,j\]\>0;

end;

(\* thu tiep \*)

if Tiep then Thu(u,v+1);

if Good then exit;

(\* Quay lui \*)

x\[u,v\]:=0;

for i:=u+1 to 9 do

if cn\[i,v,k\]=(u-1)\*9+v then

begin

cn\[i,v,k\]:=0;

sol\[i,v\]:=sol\[i,v\]+1;

end;

for j:=v+1 to 9 do

if cn\[u,j,k\]=(u-1)\*9+v then

begin

cn\[u,j,k\]:=0;

sol\[u,j\]:=sol\[u,j\]+1;

end;

for j:=v+1 to vc do

if cn\[u,j,k\]=(u-1)\*9+v then

begin

cn\[u,j,k\]:=0;

sol\[u,j\]:=sol\[u,j\]+1;

end;

for i:=u+1 to uc do

for j:=vd to vc do

if cn\[i,j,k\]=(u-1)\*9+v then

begin

cn\[i,j,k\]:=0;

sol\[i,j\]:=sol\[i,j\]+1;

end;

end;

end;

procedure Duyet;

begin

if not Good then exit;

Good:=false;

Thu(1,1);

end;

procedure Inkq;

var i,j: integer;

begin

if not Good then

begin

writeln(fo,\'IMPOSSIBLE\');

exit;

end;

for i:=1 to 9 do

begin

for j:=1 to 9 do write(fo,x\[i,j\]);

writeln(fo);

end;

end;

BEGIN

assign(fi,tfi); reset(fi);

assign(fo,tfo); rewrite(fo);

Docdl;

Chuanbi;

Duyet;

Inkq;

close(fi); close(fo);

END.

**II. Test chấm**

**Bài 2: 5 Test, mỗi test đúng cho 2 điểm**

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
Hết
\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
