const   fi='bai1.inp';
        fo='bai1.out';
var     f:array['A'..'Z'] of longint;
        s1,s2:string;
        i:longint;
        c:char;
begin
        assign(input,fi); reset(input);
        assign(output,fo); rewrite(output);
        readln(s1);
        readln(s2);
        fillchar(f,sizeof(f),0);
        for i:=1 to length(s1) do
           if (f[upcase(s1[i])]=0) then inc(f[upcase(s1[i])]);
        for i:=1 to length(s2) do
           if (f[upcase(s2[i])]=1) then inc(f[upcase(s2[i])]);
        for c:='A' to 'Z' do
           if (f[c]=2) then write(c);
        close(input); close(output);
end.
