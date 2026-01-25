Program xoakitu;
var f,g:text;
 s:string;
{=====================}
procedure Nhap;
Begin
 assign(f,'data.inp'); reset(f);
 read(f,S);
 close(f);
end;
{======================}
procedure xuly;
var i,j,k:byte;
begin
 i:=1;
35
 repeat
 if s[i] in ['0'..'9'] then inc(i) else delete(s,i,1);
 until i>length(s);
 for i:=1 to 3 do
 begin
 k:=i;
 for j:=i to length(s)+i-3 do
 if s[k]<s[j] then k:=j;
 if k>i then delete(s,i,k-i);
 end;
 assign(f,'data.out'); rewrite(f);
 writeln(f,copy(s,1,3));
 close(f);
end;
{===========================}
Begin Nhap; xuly; readln; end.