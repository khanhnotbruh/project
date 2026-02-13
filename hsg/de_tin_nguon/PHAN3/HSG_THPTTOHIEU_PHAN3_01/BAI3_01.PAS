Program bai3_1;
Var	 i, j, max, n, code : integer ;
	 s, st, kk : string ;
	 fi, fo : text ;
begin
	assign (fi,'BAI3_01.INP');
	reset (fi) ;
	readln ( fi, s );
	close (fi);
	st:= '0123456789';
	for   i:=1 to length (s)  do
		if pos(s[i],st) <> 0 then
		begin
			val (s[i],n,code) ;
			if max = 0 then max:=n ;
			if n  >= max then
				begin
					max:=n ;
					kk:=s[i] ;
				 end ;
                 	 end ;
	assign ( fo, 'BAI3_01.OUT') ;
	rewrite (fo) ;
	for i:=1 to length(s) do
		begin
			if pos(s[i],st)  = 0 then write (fo, s[i]);
			if pos(s[i],kk)  <> 0 then write (fo, s[i]);
		end;
	close(fo);
End.
