var     s:ansistring;
        i,sum:longint;
        max:char;
begin
        assign(input,'chuso.inp');reset(input);
        assign(output,'chuso.out');rewrite(output); 
        readln(s);max:='0';sum:=0;
        for i:=1 to length(s) do
        begin
                inc(sum,ord(s[i])-48);
                if s[i]>max then max:=s[i];
        end;
        writeln(sum);
        writeln(max);
        FOR I:=LENGTH(S) DOWNTO 1 DO IF S[I]=MAX THEN write(LENGTH(S)-I+1,' ');
end.

