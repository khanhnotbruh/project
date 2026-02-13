PROGRAM  bai1;
VAR	s:string;
    	i:byte;
    	dem:integer;
BEGIN
	Write('Nhap vao xau s:');readln(s);
	s:=' ' +s;   { Cong them dau cach truoc xau de dem ca tu dau tien}
	dem:=0;
	for i:=2 to length(s) do
	if (s[i-1] =' ' ) and(s[i]<> ' ') then dem:=dem+1;
	write('so tu:',dem);
	readln;
END.
