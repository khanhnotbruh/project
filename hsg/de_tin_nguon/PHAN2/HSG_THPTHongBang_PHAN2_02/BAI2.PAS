Const  fin =’Bai2.INT’;
       fuot = 'Bai2.OUT’;
Var s: String;
    i, max,dem,vt:integer;
    f:text;
Begin
	Assign(f,fin);
	Reset(f);
	Read(f,S);
	Close(f);
	max:=0;
	dem:=0;
	For i:= 1 to length(s) do
		If S[i] >= ‘0’ and (S[i] <= ‘9’ then
			Begin
				dem:= dem+1;
				If dem>max then
					Begin
						max:=dem;
						vt:=i;
					End;
			End
			Else dem:=0;
	Assign (f,fuot);
	Rewrite (f);
	Writeln(f,max);
	Write(f,copy(s,vt-max+1,max));
	Close (f);
End.
