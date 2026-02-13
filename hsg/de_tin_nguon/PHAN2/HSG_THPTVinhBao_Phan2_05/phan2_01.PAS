PROGRAM bai2;
const fi='CHUSO.INP';       fo='CHUSO.OUT';
VAR N: longint;     	f: text;
	procedure doctep;
		Begin
			assign(f,fi);
 			reset(f);
			readln(f,N);
			close(f);
		end;
	function chuso(NN:longint):char;
		var st: string[12];
    			dem,M:longint;
    		Begin
      			dem:=0;
      			M:=-2;
repeat
 	M:=M+2;
        	str(M,st);
	dem:=dem+length(st);
until dem>=NN;
chuso:=st[length(st)-(dem-NN)];
end;
procedure xuli;
	begin
		assign(f,fo);
		rewrite(f);
		write(f,chuso(N));
		close(f);
	end;
BEGIN
 	doctep;xuli;
END.
