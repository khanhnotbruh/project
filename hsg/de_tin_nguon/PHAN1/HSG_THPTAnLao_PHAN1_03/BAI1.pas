Program BAI1;
Var
	f1, f2 : Text;
	c1, c2 : char;
	count : LongInt;
Begin
	Assign(f1, 'BAI1.INP');
	Assign(f2, 'BAI1.OUT');
	Reset(f1);
	Rewrite(f2);
	
	Read(f1, c1);
	c2 := '@';
	count := 1;

	While not eof(f1) Do
	Begin
		Read(f1, c2);
		If (c2 = c1) Then
			count := count + 1
		Else
		Begin
			Write(f2, c1);
			If count > 1 Then Write(f2, count);
			c1 := c2;
			count := 1;
		End;
	End;

        Write(f2, c1);
        If count > 1 Then Write(f2, count);

	Close(f1);
	Close(f2);
End.
