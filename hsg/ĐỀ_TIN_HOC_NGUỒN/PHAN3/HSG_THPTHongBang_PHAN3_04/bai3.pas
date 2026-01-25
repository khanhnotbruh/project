CONST
	tfi	=	'BAI3.INP';
	tfo	=	'BAI3.OUT';
VAR
	a,dd		      	:	array[1..40000] of longint;
	i,res,n,t,j			:	longint;
	ok          		: longint;
BEGIN
	assign(input,tfi); reset(input);
	assign(output,tfo); rewrite(output);
	read(n);
	for i := 1 to n do read(a[i]);
	res := 0;
	fillchar(dd,sizeof(dd),0);
	for i := 1 to n - 1 do
		for j := i+1 to n do
			dd[a[i]+a[j]]:=1;
	for t := 1 to n do res := res + dd[2*a[t]];
	write(res);
	close(input);close(output);
END.
