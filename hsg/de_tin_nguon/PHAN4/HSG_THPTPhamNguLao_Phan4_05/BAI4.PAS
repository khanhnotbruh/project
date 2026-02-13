program Dem_ki_tu;
var
        kitu : array['A'..'Z'] of qword;
        tt : array[1..24] of char;
        i, sokt :qword;
        t, d, c: byte;
        kt: char;
        s: ansistring;
        f_in, f_out: text;
begin
        assign(f_in,'Bai4.inp');
        reset(f_in);
        assign(f_out, 'Bai4.out');
        rewrite(f_out);

        readln(f_in, s);
        close(f_in);

	   fillchar(kitu, sizeof(kitu),0);
	   i:= 1;
        sokt := length(s);
        while i <= sokt do
            begin
                kt := upcase(s[i]);
                if (kt >= 'A') and (kt <= 'Z') then
                    inc(kitu[kt]);
		      inc(i);
            end;
        for t:= 1 to 24 do
	        tt[t]:= chr(t+64);

        for c:= 24 downto 2 do
	        for d:= 1 to c-1 do
		        if kitu[tt[d]] < kitu[tt[d+1]] then
			        begin
				     		kt:= tt[d];
						tt[d]:= tt[d+1];
						tt[d+1]:= kt;
				   end;

        for t:= 1 to 24 do
            if kitu[tt[t]] >0 then
                writeln(f_out, tt[t], ' ', kitu[tt[t]]);

        close(f_out);
end.



