Program bai1;
Var  i, m,k,s, x: longint;
	f, f1: text;
function ngto(n: longint) : Boolean;
var i: longint;
begin
	if n<2 then ngto:= false else ngto:= true;
for i:=2 to trunc(sqrt(n)) do if n mod i=0 then
	begin
	ngto:=false;
	break;
end;
end;
begin
assign(f, `BAI1.TXT');
Reset (f); readln(f, m);
Assign (f1, `BAI1_OUT.TXT');
Rewrite (f1);
S:=0;
K:=0;
For i:=1 to m do
Begin
Read (f, x);
If  ngto(x) then
	Begin
	Write (f1, x);
	S:=S+x;
	K:=k+1;
	End;
Writeln (f1, S);
Writeln (f1, k);
Close (f);
Close (f1);
End.
