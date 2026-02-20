**Phạm Đức Cường -- THPT An Dương**

**Bài 3: Xóa nguyên âm (10 điểm )**

Xóa nguyên âm Cho một xâu ký tự bao gồm các chữ cái tiếng Anh (gồm chữ
cái in thường và in hoa)

**Yêu cầu**: Bạn hãy biến đổi xâu đã cho thành xâu mới thỏa mãn yêu cầu:

\- Xóa các nguyên âm, biết rằng tiếng Anh có các nguyên âm sau: \"A\",
\"O\", \"Y\", \"E\", \"U\", \"I\"

\- Chèn ký tự "." trước mỗi phụ âm.

\- Thay thế các phụ âm in hoa thành in thường

**Dữ liệu vào**: Cho trong tệp BAI3.INP

\- Gồm 1 dòng, cho xâu ký tự cần biến đổi. Độ dài của xâu không quá 1000
ký tự **Kết quả**: Ghi ra tệp BAI3.OUT

\- Ghi xâu ký tự sau khi biến đổi theo yêu cầu đề bài.

Ví dụ:

  -----------------------------------------------------------------------
  BAI3.INP                            BAI3.OUT
  ----------------------------------- -----------------------------------
  ttuor                               .t.t.r

  aBAcAba                             .b.c.b
  -----------------------------------------------------------------------

**Bài 4:** const

tfi = \'xoa_nguyen_am.inp\';

tfo = \'xoa_nguyen_am.out\';

var

fi,fo : text;

st : string;

n,i,j,dem : longint;

procedure nhap;

begin

assign (fi,tfi); reset (fi);

read (fi,st);

close (fi);

end;

procedure xuly;

begin

for i :=1 to length (st) do

if st\[i\] in \[\'A\'..\'Z\'\] then st\[i\] := chr(ord(st\[i\])+32);

i :=1;

while i\<= length (st) do

begin

if ((st\[i\]=\'a\') or (st\[i\]=\'e\') or(st\[i\]=\'i\') or

(st\[i\] = \'o\') or (st\[i\] = \'u\')) then delete (st,i,1)

else inc(i);

end;

i:=1;

while i \<= length(st) do

begin

insert (\'.\',st,i);

inc(i,2);

end;end;

procedure inkq;

begin

assign (fo,tfo) ; rewrite(fo);

write (fo,st);

close (fo);

end;

begin

nhap;

xuly;

inkq;

end.

const

tfi = \'xoa_so_0.inp\';

tfo = \'xoa_so_0.out\';

var

fi,fo : text;

s,s1,s2 : ansistring;

a,b,c1,c2 : longint;

kt : boolean;

function bdoi (a : longint) : longint;

var

st : ansistring;

i,x,code : longint;

begin

str(a,st);

i := 1;

while i \<= length(st) do

if st\[i\] =\'0\' then delete(st,i,1) else inc(i);

val(st,x,code);

exit (x);

end;

procedure nhap;

begin

assign (fi,tfi); reset (fi);

readln (fi,a);

readln (fi,b);

close (fi); end;

procedure xuly;

begin

kt := true;

c1 := a + b;

c2 := bdoi(a) + bdoi (b);

if bdoi(c1) \<\> c2 then kt := false else kt := true;

end;

procedure inkq;

begin

assign(fo,tfo); rewrite (fo);

if kt then writeln (fo,\'YES\') else writeln (fo,\'NO\');

write (fo,c2);

close (fo); end;

begin

nhap; xuly; inkq; end.
