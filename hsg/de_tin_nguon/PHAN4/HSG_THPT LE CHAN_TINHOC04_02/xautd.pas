const   fi='xautd.inp';
        fo='xautd.out';
var     fa,fb:array['0'..'9'] of longint;
        a,b: string;
        i: longint;
        c: char;
        kt: boolean;
begin
        assign(input,fi); reset(input);
        assign(output,fo); rewrite(output);
        readln(a);
        readln(b);
        fillchar(fa, sizeof(fa),0);
        fillchar(fb, sizeof(fb),0);
        for i:=1 to length(a) do
           if (a[i] in ['0'..'9']) then inc(fa[a[i]]);
        for i:=1 to length(b) do
           if (b[i] in ['0'..'9']) then inc(fb[b[i]]);
        kt:=true;
        for c:='0' to '9' do
           if fa[c]<>fb[c] then
              begin
                  kt:=false;
                  break;
              end;
        if kt then writeln('CO') else writeln('KHONG');
        close(input); close(output);
end.
