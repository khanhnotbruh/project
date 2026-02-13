const inp='PAIRNUM.INP';
           out='PAIRNUM.OUT';
           Maxc=100000;

var   ans:int64; n:longint;
         mang:array[1..Maxc] of int64;

procedure main; 
    var x,i:longint;  
begin
    assign(input,inp);assign(output,out);
    reset(input);rewrite(output);
    readln(n);
    for i:=1 to n do 
	begin 
		read(x); 
		inc(mang[x]); 
	end;
    for i:=1 to Maxc do 
	if mang[i]<>0 then ans:=ans+(mang[i]*(mang[i]-1)div 2);
    writeln(ans);
end;

begin
    main;
end.
