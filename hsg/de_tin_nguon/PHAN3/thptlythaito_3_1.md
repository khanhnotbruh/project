***Đào Văn Quý -- THPT Lý Thái Tổ***

CAUHOI

***Cho một xâu S chỉ gồm các chữ cái in thường với độ dài tối đa 250 ký
tự. Em hãy viết chương trình để tạo ra xâu SG từ xâu S bằng cách xóa các
ký tự liên tiếp giống nhau trong xâu S và chỉ để lại một kí tự đại diện
trong đoạn đó.***

DAPAN(7đ)

const fi=\'xaugon.inp\';

fo=\'xaugon.out\';

Var s:string;f:text;

{========}

procedure doc;

begin

assign(f,fi); reset(f);

readln(f,s);

end;

{========}

procedure xuly;

var ch,kt:char; i,max,dem:longint;

begin

assign(f,fo); rewrite(f);

i:=1;

while i\<length(s) do

begin

if s\[i\]=s\[i+1\] then delete(s,i,1)

11

else inc(i);

end;

writeln(f,s);

close(f);

end;

{=========}

begin

doc;

xuly;

readln;

end.
